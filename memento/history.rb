# Stores zero or more DocumentState objects in a list
# Caretaker
module Memento
  class History

    def initialize(memento_list: [])
      @memento_list = memento_list
    end

    # @param memento - content, font_size, font_name  args 
    # of the DocumentState instance
    def add_memento_state(memento_state:)
      memento_list << memento_state
    end

 
    # @return memento - document_state that was last in
    # memnto list
    def remove_from_memento_list
      last_item = memento_list.pop()
      return last_item
    end
    
    private

    attr_accessor :memento_list
  end
end