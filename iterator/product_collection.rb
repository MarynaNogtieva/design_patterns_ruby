require_relative 'product_array_iterator'

class ProductCollection
  attr_accessor :products, :iterator

  def initialize(products=[])
    @products = products
  end

  def create_iterator
    self.iterator = ProductArrayIterator.new(products)
    return iterator
  end

  def add(product)
    products << product
  end
end