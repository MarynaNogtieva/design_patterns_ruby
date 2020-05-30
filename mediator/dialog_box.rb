# Observer
require_relative 'ui_element'
require_relative 'password_textbox'
require_relative 'username_textbox'
require_relative 'agree_checkbox'
require_relative 'signup_button'

class DialogBox
  def initialize
    @password_textbox = PasswordTextbox.new
    @username_textbox = UsernameTextbox.new
    @agree_checkbox = AgreeCheckbox.new
    @signup_button = SignupButton.new

    @agree_checkbox.add_observer(self)
    @password_textbox.add_observer(self)
    @username_textbox.add_observer(self)
  end

  def control_changed
    # check if form is valid and set button to be enabled/disabled
    is_form_valid = form_valid?
    @signup_button.enabled = is_form_valid
  end

  def form_valid?
    password = @password_textbox.password_text
    username = @username_textbox.username_text
    @password_textbox.not_blank?(password) && @username_textbox.not_blank?(username) && @agree_checkbox.checked
  end

  def simulate_user_interaction
    puts "Button is initially enabled: #{@signup_button.enabled || 'false'}"

    @username_textbox.username_text = 'username'
    puts "Button after setting up username is enabled: #{@signup_button.enabled || 'false'}"

    @password_textbox.password_text = 'password'
    puts "Button after setting up password is enabled: #{@signup_button.enabled || 'false'}"

    @agree_checkbox.checked = true
    puts "Button after filling checkbox is enabled: #{@signup_button.enabled}"

    @password_textbox.password_text = ''
    puts "Button after removing password is enabled: #{@signup_button.enabled || 'false'}"

    @password_textbox.password_text = 'password'
    puts "Button after re-setting password is enabled: #{@signup_button.enabled}"

  end
end