module Canvas
  # ConcreteState
  class BrushTool < Canvas::Tool
    def execute_mouse_up
      if tool_type = Canvas::Tool::TOOL_TYPE[:brush]
        puts "drew something"
      end
    end

    def execute_mouse_down
      if tool_type = Canvas::Tool::TOOL_TYPE[:brush]
        puts "brush tool icon"
      end
    end
  end
end