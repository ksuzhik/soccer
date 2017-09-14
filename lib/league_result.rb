require './lib/game'
class LeagueResult
  def initialize(input_data)
    @games = input_data.map { |game| Game.new(game) }
  end

  def calculate
    result = {}
    @games.each do |game|
      result.merge!(game.points) { |_, pr, n| pr + n }
    end
    result
  end
end
