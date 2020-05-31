require_relative 'data_reader'

class NumbersReader < DataReader
  def initialize(next_reader:)
    super(next_reader: next_reader)
  end

  def get_file_extension
    '.numbers'
  end

  def do_read(file_name)
    puts "Reading from Numbers spreadsheet #{file_name}"
  end
end