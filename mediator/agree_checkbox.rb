require_relative 'ui_element'

class AgreeCheckbox < UiElement
  attr_reader :checked

  def checked=(checked_value)
    @checked = checked_value
    notify_observers
  end
end