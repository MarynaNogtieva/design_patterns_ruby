require_relative 'travel_mode'

class DirectionService
  attr_accessor :travel_mode

  def initialize(travel_mode)
    @travel_mode = travel_mode
  end

  def get_eta
    if (travel_mode == TravelMode::Modes[:driving] )
      puts "Calculating ETA (driving)"
      return 1
    elsif (travel_mode == TrsavelMode[:bicycling])
      puts "Calculating ETA (byciclyng)"
      return 2 
    elsif (travel_mode == TravelMode::Modes[:transit])
      puts "Calculating ETA (transit)"
      return 3
    elsif (travel_mode == TravelMode::Modes[:walking])
      puts "Calculating ETA (walking)"
      return 4 
    end
  end

  def get_direction
    if (travel_mode == TravelMode::Modes[:driving] )
      puts "Calculating direction (driving)"
      return 1
    elsif (travel_mode == TrsavelMode[:bicycling])
      puts "Calculating direction (byciclyng)"
      return 2 
    elsif (travel_mode == TravelMode::Modes[:transit])
      puts "Calculating direction (transit)"
      return 3
    elsif (travel_mode == TravelMode::Modes[:walking])
      puts "Calculating direction (walking)"
      return 4 
    end
  end
end