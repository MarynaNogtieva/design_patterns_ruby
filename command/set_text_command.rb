class SetTextCommand
  attr_accessor :history, :editor, :text, :prev_text

  def initialize(history:, editor:, text:)
    @history = history
    @editor = editor
    @text = text
    @prev_text = editor.text 
  end

  def execute
    editor.set_text(text)
    history.add(self)
  end

  def unexecute
    editor.text = prev_text
    editor
  end
end