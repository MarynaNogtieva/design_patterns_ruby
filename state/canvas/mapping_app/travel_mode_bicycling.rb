require_relative 'travel_mode'

class TravelModeBicycling < TravelMode
  def get_eta
    puts "Calculating ETA (byciclyng)"
    return 2 
  end

  def get_direction
    puts "Calculating direction (byciclyng)"
    return 2
  end
end