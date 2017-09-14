class Game
  attr_reader :players
  def initialize(input_data)
    @players = input_data.keys
    @goals = input_data.values
  end

  def points
    if @goals[0] > @goals[1]
      { @players[0] => 3, @players[1] => 0 }
    elsif @goals[0] == @goals[1]
      Hash[players.collect { |k, _| [k, 1] }]
    else
      { @players[1] => 3, @players[0] => 0 }
    end
  end
end
