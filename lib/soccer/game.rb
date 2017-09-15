module Soccer
  class Game
    def initialize(input_data)
      @players = input_data.keys
      @goals = input_data.values
      @points = calculate_points
    end

    def result
      Hash[@players.zip(@points)]
    end

    private

    def calculate_points
      return [1, 1] if @goals[0] == @goals[1]
      winner = @goals.index(@goals.max)
      res = [0, 0]
      res[winner] = 3
      res
    end
  end
end
