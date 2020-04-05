require_relative 'travel_mode'
require_relative 'travel_mode_driving'
require_relative 'travel_mode_walking'
require_relative 'travel_mode_transit'
require_relative 'travel_mode_bicycling'
require_relative 'direction_service'

class Demo
  def self.run
    travel_mode_bicycling = TravelModeBicycling.new
    direction_service = DirectionService.new(travel_mode_bicycling)

    direction_service.get_eta
    direction_service.get_direction
  end
end