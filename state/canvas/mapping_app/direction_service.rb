require_relative 'travel_mode'
require_relative 'travel_mode_driving'
require_relative 'travel_mode_walking'
require_relative 'travel_mode_transit'
require_relative 'travel_mode_bicycling'

class DirectionService
  attr_accessor :travel_mode

  def initialize(travel_mode)
    @travel_mode = travel_mode
  end

  def get_eta
   travel_mode.get_eta if travel_mode
  end

  def get_direction
    travel_mode.get_direction if travel_mode
  end
end