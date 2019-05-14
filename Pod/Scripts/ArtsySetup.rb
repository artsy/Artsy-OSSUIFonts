#!/usr/bin/env ruby

puts "Trying to clone Artsy's Private fonts, it is OK if it fails for OSS contributors."

def raise_if_hokusai!
  `which hokusai`
  if $?.exitstatus == 0
    raise "You appear to have Hokusai installed but we couldn't access Artsy's private fonts repository. Failing pod install. Ask the #front-end-ios Slack channel for help."
  end
end

# Artsy Staff gets the real fonts, which are kept behind closed doors.
if ENV["GITHUB_SUBMODULES_USER"]
  # Support passing in an ENV var with an access token for a custom user
  `git clone https://#{ENV["GITHUB_SUBMODULES_USER"]}@github.com/artsy/Artsy-UIFonts tmp_fonts`
  raise_if_hokusai! unless $?.exitstatus == 0
else
  `git clone https://github.com/artsy/Artsy-UIFonts tmp_fonts`
  raise_if_hokusai! unless $?.exitstatus == 0
  `git clone git@github.com:artsy/Artsy-OSSUIFonts.git tmp_fonts` unless Dir.exist? "tmp_fonts"  
end

# This could fail
if Dir.exist? "tmp_fonts"
  `rm Pod/Assets/*`
  `mv tmp_fonts/Pod/Assets/* Pod/Assets`

  font_file = "Pod/Classes/UIFont+ArtsyFonts.m"
  contents = File.read font_file
  contents.sub!("static BOOL useClosedFonts = false;", "static BOOL useClosedFonts = true;")
  File.write font_file, contents
end
