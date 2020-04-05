require_relative 'travel_mode'

class TravelModeDriving < TravelMode
  def get_eta
    puts "Calculating ETA (driving)"
    return 1
  end

  def get_direction
    puts "Calculating direction (driving)"
    return 1
  end
end