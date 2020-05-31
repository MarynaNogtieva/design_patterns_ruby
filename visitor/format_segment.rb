require_relative 'segment'

class FormatSegment < Segment
  def execute(filter)
    filter.apply(self)
  end
end