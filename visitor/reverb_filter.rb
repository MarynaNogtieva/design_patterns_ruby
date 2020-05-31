require_relative 'audio_filter'

class ReverbFilter < AudioFilter 
  def apply(segment)
    puts "Reverb on #{segment&.class&.name}"
  end
end