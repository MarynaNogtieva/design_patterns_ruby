require_relative 'window'

class ServiceDeskWindow < Window

  protected

  def on_closing
    puts "Saving conversation"
  end
end
