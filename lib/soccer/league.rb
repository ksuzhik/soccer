require './lib/soccer/game'
module Soccer
  class League
    def initialize(input_data)
      @games = input_data.map { |game| Game.new(game) }
      @result = {}
    end

    def results
      @games.each do |game|
        @result.merge!(game.result) { |_, pr, n| pr + n }
      end
      sort_result
    end

    private

    def sort_result
      Hash[@result.sort_by { |name, points| [-points, name] }]
    end
  end
end
