require_relative 'iterator'

class ProductArrayIterator < Iterator
  attr_accessor :products, :index

  def initialize(products, index=0)
    @products = products
    @index = index
  end

  def next
    self.index += 1
    return index
  end

  def has_next?
    return index < products.length
  end

  def current
    return products[index]
  end
end