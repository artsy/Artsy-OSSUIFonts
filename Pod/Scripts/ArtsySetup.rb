#!/usr/bin/env ruby

# Artsy Staff gets the real fonts, which are kept behind closed doors.
if ENV["ARTSY_STAFF_MEMBER"] || ENV["CI"] == "true"
  `rm Pod/Assets/*`
  `git clone https://github.com/artsy/Artsy-UIFonts tmp_fonts`
  `mv tmp_fonts/Pod/Assets/* Pod/Assets`

  font_file = "Pod/Classes/UIFont+ArtsyFonts.m"
  contents = File.read font_file
  contents.sub!("static BOOL useClosedFonts = false;", "static BOOL useClosedFonts = true;")
  File.write font_file, contents
end
