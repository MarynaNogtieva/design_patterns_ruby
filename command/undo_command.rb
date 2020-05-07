
class UndoCommand
  include CommandInterface

  attr_accessor :history

  def initialize(history:)
    @history = history
  end

  def execute
    prev_command = history.remove
    prev_command.unexecute
  end
end