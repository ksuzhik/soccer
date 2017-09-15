class Formatter
  class << self
    def process(content)
      content.each_with_object([]).with_index do |(team, res), index|
        res << format_result(*team, index)
      end
    end

    private

    def format_result(team, points, index)
      "#{index + 1}) #{team}, #{points} pt"
    end
  end
end
