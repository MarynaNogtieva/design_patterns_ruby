module UndoableCommandInterface
  include CommandInterface

  def unexecute
    raise 'Method unexecute is not implemented'
  end
end