class FileProcessor
  class << self
    def read_lines(filename)
      File.readlines(filename)
    end

    def write_lines(filename, data)
      File.open(filename, 'w+') do |f|
        data.each { |line| f.puts(line) }
      end
    end
  end
end
