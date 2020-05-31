require_relative 'audio_filter'

class NoiseReductionFilter < AudioFilter 
  def apply(segment)
    puts "Noise reduction on #{segment&.class&.name}"
  end
end