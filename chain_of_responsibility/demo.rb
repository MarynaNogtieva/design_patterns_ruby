require_relative 'data_reader_chain'
# As part of building an accounting application,
#  we need to allow the user to import their data in a variety of formats such as:
#  -Excel spreadsheets (Windows)
#  -Number spreadsheets (Mac)
#  -QuickBook workbooks (special accounting software) 
# In the future, we may need to support other data formats. Look at the current implementation of our data reader at chainOfResponsibility/DataReader. What are the problems with this implementation? Refactor this code and use the chain of responsibility pattern to solve these problems.  
class Demo
  def self.run
    reader = DataReaderChain.data_readers_chain
    reader.read("data.xls")
    reader.read("data.numbers")
    reader.read("data.qbw")
    reader.read("data.jpg")
  end
end