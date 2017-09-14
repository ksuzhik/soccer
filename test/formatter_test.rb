require './lib/formatter'
require 'test/unit'

class FormatterTest < Test::Unit::TestCase
  def test_formating
    input_data = {
      'Tarantulas' => 6,
      'Lions' => 5,
      'FC Awesome' => 1
    }

    expected_result = [
      '1) Tarantulas, 6 pt',
      '2) Lions, 5 pt',
      '3) FC Awesome, 1 pt'
    ]
    assert_equal(expected_result, Formatter.process(input_data))
  end
end
