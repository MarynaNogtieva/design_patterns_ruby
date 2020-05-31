require_relative 'segment'

class FactSegment < Segment
  def execute(filter)
    filter.apply(self)
  end
end