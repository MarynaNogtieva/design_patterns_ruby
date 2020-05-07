class VideoEditor
  attr_accessor :contrast, :text

  def initialize
    @contrast = 0.5
    @text = ''
  end

  def remove_text
    self.text = ''
    text
  end

  def set_text(text)
    self.text = text
    text
  end

  def set_contrast(number)
    self.contrast = number
    contrast
  end

  def to_s
    return "VideoEditor{
      contrast=#{contrast},
      text=#{text}
      }
    "
  end
end