require './lib/soccer/league'
require 'test/unit'

class LeagueTest < Test::Unit::TestCase
  def test_calculations
    input_data = [
      { 'Lions' => 3, 'Snakes' => 3 },
      { 'Tarantulas' => 1, 'FC Awesome' => 0 },
      { 'Lions' => 1, 'FC Awesome' => 1 },
      { 'Tarantulas' => 3, 'Snakes' => 1 },
      { 'Lions' => 4, 'Grouches' => 0 }
    ]
    expected_result = {
      'Tarantulas' => 6,
      'Lions' => 5,
      'FC Awesome' => 1,
      'Snakes' => 1,
      'Grouches' => 0
    }
    assert_equal(
      expected_result,
      Soccer::League.new(input_data).results
    )
  end
end
