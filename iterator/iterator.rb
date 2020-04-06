require_relative 'iterator_interface'

class Iterator
  include IteratorInterface

  def next
    Iterator.method_not_implemented(self)
  end

  def curent
    Iterator.method_not_implemented(self)
  end

  def has_next?
    Iterator.method_not_implemented(self)
  end
end