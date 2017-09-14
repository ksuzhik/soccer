#!/usr/bin/env ruby

# Ranking table calculator

require './lib/file_processor'
require './lib/parser'
require './lib/formatter'
require './lib/soccer/league'

def calculate_results(input_data)
  parsed_data = Parser.process(input_data)
  Formatter.process Soccer::League.new(parsed_data).results
rescue Exception => e
  puts "Can't calculate results."
  exit
end

def fetch_input_data(filename)
  FileProcessor.read_lines(filename)
rescue Exception => e
  puts "Can't read file #{ARGV[0]}. Please provile correct file path."
  exit
end

input_data = fetch_input_data(ARGV[0])
puts 'Results:'
puts calculate_results(input_data)
