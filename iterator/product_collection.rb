class ProductCollection
  attr_accessor :products

  def add(product)
    products << product
  end
end