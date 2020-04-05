require_relative 'travel_mode'

class TravelModeWalking < TravelMode
  def get_eta
    puts "Calculating ETA (walking)"
    return 4 
  end

  def get_direction
    puts "Calculating direction (walking)"
    return 4 
  end
end