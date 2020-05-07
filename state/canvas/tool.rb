module State
  # State
  # Abstract class  - want to provide common code
  # to all child classes
  class Tool
    attr_accessor :tool_type
    TOOL_TYPE = {
      selection: 'SELECTION',
      brush: 'BRUSH',
      eraser: 'ERAZER'
    }.freeze

    # Abstract methods
    def execute_mouse_up
      # can be overriden
    end

    # Abstract methods
    def execute_mouse_down
      # can be overriden
    end
  end
end