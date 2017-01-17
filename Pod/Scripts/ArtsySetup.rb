#!/usr/bin/env ruby

# Artsy Staff gets the real fonts, which are kept behind closed doors.
return unless ENV["ARTSY_STAFF_MEMBER"] || ENV["CI"] == "true"

`rm Pod/Assets/*`
`git clone https://github.com/artsy/Artsy-UIFonts tmp_fonts`
`mv tmp_fonts/Pod/Assets/* Pod/Assets`
