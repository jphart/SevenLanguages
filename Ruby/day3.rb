#!/usr/bin/env ruby

require 'acts_as_csv_module' 

csv = RubyCsv.new
csv.each{|row| puts row.one}
