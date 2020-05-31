require_relative 'fact_segment'
require_relative 'format_segment'
require_relative 'wav_file'
require_relative 'normalize_filter'
require_relative 'reverb_filter'
require_relative 'noise_reduction_filter'

class Demo
  # We’re going to build an audio editor for editing wave (.wav) files.
  #  We’re planning to ship this application with a bunch of standard filters that users can apply on their audio files, such as:
  # -Noise reduction
  # -Reverb
  # -Normalize
  # We want other developers to be able to create new filters in the form of plugins that can be imported into our application.

  def self.run
    audio_file = WavFile.new
    audio_file.add_segment(FactSegment.new)
    audio_file.add_segment(FactSegment.new)
    audio_file.add_segment(FactSegment.new)
    audio_file.add_segment(FormatSegment.new)

    audio_file.execute(NormalizeFilter.new)
    audio_file.execute(NoiseReductionFilter.new)
    audio_file.execute(ReverbFilter.new)
  end
end