require_relative 'audio_filter'

class NormalizeFilter < AudioFilter 
  def apply(segment)
    puts "Normilize on #{segment&.class&.name}"
  end
end