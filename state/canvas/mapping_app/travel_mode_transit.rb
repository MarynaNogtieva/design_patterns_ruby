require_relative 'travel_mode'

class TravelModeTransit < TravelMode

  def get_eta
    puts "Calculating ETA (transit)"
    return 3
  end

  def get_direction
    puts "Calculating direction (transit)"
    return 3
  end
end