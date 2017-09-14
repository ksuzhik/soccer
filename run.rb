#!/usr/bin/env ruby

# Ranking table calculator

require './lib/file_processor'
require './lib/parser'
require './lib/formatter'
require './lib/soccer/league'

def calculate_results(input_data)
  parsed_data = Parser.process(input_data)
  Formatter.process Soccer::League.new(parsed_data).results
end

input_data = FileProcessor.read_lines(ARGV[0])
puts 'Results:'
puts calculate_results(input_data)
