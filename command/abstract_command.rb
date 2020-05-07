class AbstractCommand
  include UndoableCommandInterface
  attr_accessor :editor, :history

  def initialize(editor:, history:)
    @history = history
    @editor = editor
  end

  def execute
    do_execute
    history.add(self)
  end

  def do_execute
    raise "'do_execute' method is not implemented"
  end
end