class FileReader
  def initialize(filename)
    @filename = filename
  end

  def read
    File.readlines(@filename)
  end
end
