#!/usr/bin/env ruby

# Ranking table calculator

require './file_processor'
require './lib/parser'
require './lib/formatter'
require './lib/league_result'
file = './sample-input.txt'
input_data = FileProcessor.read_lines(file)
parsed_data = Parser.process(input_data)
result = Formatter.process LeagueResult.new(parsed_data).calculate
puts FileProcessor.write_lines('res.txt', result)

