class Parser
  class << self
    def process(content)
      content.map do |row|
        Hash[row.split(',').map { |s| split_command_results(s) }]
      end
    end

    private

    def split_command_results(str)
      player = str.split(/(\d+)(?!.*\d)/)
      [player[0].strip, player[1].to_i]
    end
  end
end
