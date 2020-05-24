require_relative 'history'
require_relative 'document_state'
require_relative 'document'


# demo = Memento::Demo.new.run
module Memento
  class Demo
    def run
      ############ Create document
      document = Memento::Document.new()
      document.content = 'Hello, this is memnto!'
      document.font_size = 14
      document.font_name = 'Times New Roman'

      ############ Create doc state
      document_state = document.create_state
     
      ############ Create history
      history = Memento::History.new
      history.add_memento_state(memento_state: document_state)

      puts "Document before changes: #{document}"
  
      ############ Create new doc state
      document.font_name = 'Arial'
      document.font_size = 18
      
      puts "Document after changes: #{document}"

      ############ Undo to the previous state
      previous_document_state = history.remove_from_memento_list()
      document.restore_state(memento: previous_document_state)

      puts "Document after undo: #{document}"
    end
  end
end