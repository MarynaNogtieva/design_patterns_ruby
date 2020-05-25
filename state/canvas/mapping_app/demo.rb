require_relative 'travel_mode'
require_relative 'travel_mode_driving'
require_relative 'travel_mode_walking'
require_relative 'travel_mode_transit'
require_relative 'travel_mode_bicycling'
require_relative 'direction_service'
# https://refactoring.guru/design-patterns/state
# State is a behavioral design pattern that lets an object alter its behavior when its internal state changes. It appears as if the object changed its class.
# This structure may look similar to the Strategy pattern, but there’s one key difference. In the State pattern, the particular states may be aware of each other and initiate transitions from one state to another, whereas strategies almost never know about each other

# It allows object to behave differently when a state changes
# Object can have only a single state (Canvas has a current tool and behavor is represented by a subclass represents this tool interface)

class Demo
  def self.run
    travel_mode_bicycling = TravelModeBicycling.new
    direction_service = DirectionService.new(travel_mode_bicycling)

    direction_service.get_eta
    direction_service.get_direction
  end
end