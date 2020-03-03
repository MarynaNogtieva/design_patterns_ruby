# Originator
module Memento
  class Document
    attr_accessor :content, :font_name, :font_size


    # stores the current state of the document into DocumentState(memento)
    def create_state
      return Memento::DocumentState.new(
        content: content,
        font_name: font_name,
        font_size: font_size
      )
    end

    # restores previous state of the document that was in the DocumentState\
    # @param memnto - document_state obj, brings document to a previous state
    def restore_state(memento: document_state)
      self.content = memento.content
      self.font_name = memento.font_name
      self.font_size = memento.font_size
    end

    def to_s
      return "Document:\n
        content: #{content},\n
        font_name: #{font_name},\n
        font_size: #{font_size}\n
      "
    end
  end
end