class SetTextCommand  < AbstractCommand
  attr_accessor :text

  def initialize(history:, editor:, text:)
    super(history: history, editor: editor)
    @text = text
    @prev_text = editor.text 
  end

  def do_execute
    editor.set_text(text)
  end

  def unexecute
    editor.remove_text
    editor
  end
end