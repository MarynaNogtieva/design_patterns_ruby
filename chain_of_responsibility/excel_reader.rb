require_relative 'data_reader'

class ExcelReader < DataReader
  def initialize(next_reader:)
    super(next_reader: next_reader)
  end

  def get_file_extension
    '.xls'
  end

  def do_read(file_name)
    puts "Reading from Excel spreadsheet #{file_name}"
  end
end