class SetContrastCommand < AbstractCommand
  attr_accessor :prev_contrast, :contrast

  def initialize(history:, editor:, contrast:)
    super(history: history, editor: editor)
    @contrast = contrast
    @prev_contrast = editor.contrast 
  end

  def do_execute
    editor.set_contrast(contrast)
  end

  def unexecute
    editor.contrast = prev_contrast
    editor
  end
end