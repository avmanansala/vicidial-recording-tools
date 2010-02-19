#!/usr/bin/ruby
#Move recording files to a seperate DATE directory
#Copyright 2010 Lito Manansala avmanansala@gmail.com License GPL v2
#sample usage: ./move_recordings_to.irb 20100219
#Date Sample format 20100219

require 'ftools'
dateq = ARGV[0]
basedir = '/var/spool/asterisk/monitorDONE/MP3'
`mkdir -p "#{basedir}/#{dateq}"`
#{}`/usr/bin/find "#{basedir}"/ -maxdepth 1 -iname '*"#{dateq}"*' -type f  | xargs -i mv -f {} "#{dateq}"/`
system "/usr/bin/find #{basedir}/ -maxdepth 1 -iname '*#{dateq}*' -type f  | xargs -i mv -f {} #{dateq}/"
puts "/usr/bin/find #{basedir}/ -maxdepth 1 -iname '*#{dateq}*' -type f  | xargs -i mv -f {} #{dateq}/"


