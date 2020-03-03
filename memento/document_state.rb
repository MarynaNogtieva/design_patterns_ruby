# Responsible for storing the state of our documemt
# at a given time
# Memento
module Memento
  class DocumentState
    attr_reader :content, :font_name, :font_size

    def initialize(content:, font_name:, font_size:)
      @content = content
      @font_name = font_name
      @font_size = font_size
    end

    private

    attr_writer :content, :font_name, :font_size
  end
end