
module Canvas
  # Context
  # Has Tool
  class Canvas
    attr_accessor :current_tool

    # @param current_tool - instance of a Tool class or its subclassesss

    def execute_mouse_up
      current_tool.execute_mouse_up if current_tool
    end

    def execute_mouse_down
      current_tool.execute_mouse_down if current_tool
    end
  end
end