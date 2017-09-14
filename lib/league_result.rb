require './lib/game'
class LeagueResult
  def initialize(input_data)
    @games = input_data.map { |game| Game.new(game) }
    @result = {}
  end

  def calculate
    @games.each do |game|
      @result.merge!(game.points) { |_, pr, n| pr + n }
    end
    sort_result
  end

  private

  def sort_result
    Hash[@result.sort_by { |name, points| [-points, name] }]
  end
end
