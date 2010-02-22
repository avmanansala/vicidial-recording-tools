#!/usr/bin/env ruby
#Copyright 2010 Lito Manansala avmanansala@gmail.com License GPL v2
#
#
#
require 'rubygems'
require 'db_conn.rb'
require 'active_support'

num_of_days = 130
base_dir = "/var/spool/asterisk/monitor/ORIG"
dest_dir = "/var/spool/asterisk/monitor/MP3"

puts "Creating Directories..."
for i in 1..num_of_days
  dir_to_create = i.days.ago.strftime("%b-%d-%Y")
  puts "Creating  \"#{dest_dir}/#{dir_to_create}\" directory"
  exec "mkdir #{dest_dir}/#{dir_to_create}"
end
puts "done creating directories..."

# Listing all -all.wav files
