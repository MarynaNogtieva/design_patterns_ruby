class SetContrastCommand
  include UndoableCommandInterface

  attr_accessor :history, :editor, :prev_contrast, :contrast

  def initialize(history:, editor:, contrast:)
    @history = history
    @editor = editor
    @contrast = contrast
    @prev_contrast = editor.contrast 
  end

  def execute
    editor.set_contrast(contrast)
    history.add(self)
  end

  def unexecute
    editor.contrast = prev_contrast
    editor
  end
end