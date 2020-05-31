class DataReader
  attr_reader :next_reader

  def initialize(next_reader:)
    @next_reader = next_reader
  end

  def read(file_name)
    if file_name.end_with?(get_file_extension)
      do_read(file_name)
      return
    end
    
    if next_reader
      next_reader.read(file_name)
    else
      raise "Unsupported file format"
    end
  end

  def get_file_extension
    raise "Method is not implemented"
  end

  def do_read
    raise "Method is not implemented"
  end
end