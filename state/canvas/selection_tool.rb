module Canvas
  # ConcreteState
  class SelectionTool < Canvas::Tool

    def execute_mouse_up
      if tool_type = Canvas::Tool::TOOL_TYPE[:selection]
        puts "selected something"
      end
    end

    def execute_mouse_down
      if tool_type = Canvas::Tool::TOOL_TYPE[:selection]
        puts "selection tool icon"
      end
    end
  end
end