require_relative 'window'

class ServiceDeskWindow < Window

  protected

  def on_close
    puts "Saving conversation"
  end
end
