require_relative 'service_desk_window'

class Demo
  def self.run
    window = ServiceDeskWindow.new
    window.close
  end
end
