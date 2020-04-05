require_relative 'tool'
require_relative 'brush_tool'
require_relative 'selection_tool'
require_relative 'canvas'
require_relative 'tool'

module Canvas
  class Demo
    def run
      canvas = Canvas::Canvas.new()
      canvas.current_tool = Canvas::SelectionTool.new

      canvas.execute_mouse_up
      canvas.execute_mouse_down
    end
  end
end