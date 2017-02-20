#!/usr/bin/env ruby

puts "Trying to clone Artsy's Private fonts, it is OK if it fails."

# Artsy Staff gets the real fonts, which are kept behind closed doors.
`git clone https://github.com/artsy/Artsy-UIFonts tmp_fonts`

# This could fail
if Dir.exist? "tmp_fonts"
  `rm Pod/Assets/*`
  `mv tmp_fonts/Pod/Assets/* Pod/Assets`

  font_file = "Pod/Classes/UIFont+ArtsyFonts.m"
  contents = File.read font_file
  contents.sub!("static BOOL useClosedFonts = false;", "static BOOL useClosedFonts = true;")
  File.write font_file, contents
end
