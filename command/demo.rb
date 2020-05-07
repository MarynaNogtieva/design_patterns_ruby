require_relative 'command_interface'
require_relative 'undoable_command_interface'
require_relative 'video_editor'
require_relative 'history'
require_relative 'set_text_command'
require_relative 'set_contrast_command'

class Demo
  def self.run
    history = History.new()
    editor = VideoEditor.new()
    editor.set_contrast(7)
    contrast_command = SetContrastCommand.new(
      history: history,
      editor:  editor,
      contrast: 3,
    ) 
    contrast_command.execute
    puts editor.contrast
  end
end