#!/usr/bin/env ruby

# Ranking table calculator

require './file_reader'
require './lib/parser'
require './lib/league_result'
input_data = [
  'Lions 3, Snakes 3',
  'Tarantulas 1, FC Awesome 0',
  'Lions 1, FC Awesome 1',
  'Tarantulas 3, Snakes 1',
  'Lions 4, Grouches 0'
]
parsed_data = Parser.process(input_data)
result = LeagueResult.new(parsed_data).calculate
puts result
