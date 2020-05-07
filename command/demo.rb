require_relative 'command_interface'
require_relative 'undoable_command_interface'
require_relative 'video_editor'
require_relative 'history'
require_relative 'set_text_command'
require_relative 'set_contrast_command'
require_relative 'undo_command'

class Demo
  def self.run
    #setup
    history = History.new()
    editor = VideoEditor.new()
    editor.set_contrast(7)
    editor.set_text('When I was 6 years old, I saw, once, .. ')
    puts editor.to_s
    
    # execute commands
    contrast_command = SetContrastCommand.new(
      history: history,
      editor:  editor,
      contrast: 3,
    )
    
    text_command = SetTextCommand.new(
      history: history,
      editor:  editor,
      text:    'The book said "Boa snakes swallow their prey whole.. ',
    )

    contrast_command.execute
    text_command.execute
    puts editor.to_s

    undo_command = UndoCommand.new(history: history)
    undo_command.execute
    undo_command.execute

    puts editor.to_s
  end
end