# Subject
class UiElement
  attr_accessor :observers

  def initialize()
    @observers = []
  end

  def add_observer(observer)
    observers << observer
  end

  def notify_observers
    observers.each(&:control_changed)
  end

  def not_blank?(value)
    !value.nil? && !value.empty?
  end
end