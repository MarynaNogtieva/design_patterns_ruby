require_relative 'ui_element'

class PasswordTextbox < UiElement
  attr_reader :password_text

  def password_text=(password)
    @password_text = password
    notify_observers
  end
end