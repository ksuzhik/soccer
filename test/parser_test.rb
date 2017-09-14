require './lib/parser'
require 'test/unit'

class ParserTest < Test::Unit::TestCase
  def test_process
    content = [
      'Lions 3, Snakes 3',
      'Tarantulas 1, FC Awesome 0'
    ]
    expected_result = [
      { 'Lions' => 3, 'Snakes' => 3 },
      { 'Tarantulas' => 1, 'FC Awesome' => 0 }
    ]
    assert_equal(expected_result, Parser.process(content))
  end
end
