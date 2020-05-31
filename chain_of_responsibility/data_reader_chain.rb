require_relative 'excel_reader'
require_relative 'numbers_reader'
require_relative 'quick_books_reader'

class DataReaderChain
  def self.data_readers_chain
    excel_reader = ExcelReader.new(next_reader: nil)
    numbers_reader = NumbersReader.new(next_reader: excel_reader)
    quick_books_reader = QuickBooksReader.new(next_reader: numbers_reader)

    quick_books_reader
  end
end