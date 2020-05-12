class AbstractStock
  attr_accessor :observers

  def initialize
    @observers = []
  end

  def add_observer(observer)
    observers << observer

    observers
  end

  def remove_observer(observer)
    observers.delete_if { |obs| obs.id == observer.id }
    observers
  end

  def notify_observers
    observers.each(&:price_changed)
  end
end