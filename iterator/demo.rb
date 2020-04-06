require_relative 'iterator'
require_relative 'product_array_iterator'
require_relative 'product_collection'
require_relative 'product'

class Demo
  def self.run
    product_a = Product.new(1, 'a')
    product_b = Product.new(2, 'b')

    products = ProductCollection.new()
    products.add(product_a)
    products.add(product_b)

    iterator = products.create_iterator

    while iterator.has_next? do
      current_product = iterator.current
      puts current_product

      iterator.next
    end

  end
end