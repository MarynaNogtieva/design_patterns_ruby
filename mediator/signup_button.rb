require_relative 'ui_element'

class SignupButton < UiElement
  attr_reader :enabled

  def enabled=(enabled_value)
    @enabled = enabled_value
    notify_observers
  end
end