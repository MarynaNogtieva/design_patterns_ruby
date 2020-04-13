class Window
  def close
   # something custom might happen before closing
    puts "Removing window from a screen"
   # something custom might happen after closing
  end

  protected 

  def on_close
    raise RuntimeError, "Not implemented"
  end
end