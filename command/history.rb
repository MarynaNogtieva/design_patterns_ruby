class History
  def initialize
    @history_commands_list = []
  end

  def add(command)
    @history_commands_list << command
  end

  def remove
    if @history_commands_list.size > 0
      @history_commands_list.pop()
    else
      puts "there is nothing left in the history"
    end
  end
end