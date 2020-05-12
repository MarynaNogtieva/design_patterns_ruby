class Observer
  include ObserverInterface

  def price_changed
    Observer.method_not_implemented(self)
  end
end