require_relative 'ui_element'

class UsernameTextbox < UiElement
  attr_reader :username_text


  def username_text=(username)
    @username_text = username
    notify_observers
  end
end