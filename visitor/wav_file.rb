class WavFile

  def initialize
    @segments = []
  end

  def add_segment(segment)
    @segments << segment
  end

  def execute(filter)
    @segments.each do |segment|
      segment.execute(filter)
    end
  end
end