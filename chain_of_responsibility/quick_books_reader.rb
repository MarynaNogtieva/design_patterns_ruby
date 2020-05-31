require_relative 'data_reader'

class QuickBooksReader < DataReader
  def initialize(next_reader:)
    super(next_reader: next_reader)
  end

  def get_file_extension
    '.qbw'
  end

  def do_read(file_name)
    puts "Reading from QuickBooks spreadsheet #{file_name}"
  end
end