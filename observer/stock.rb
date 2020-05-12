require_relative 'abstract_stock'

class Stock < AbstractStock
  attr_accessor :price, :symbol

  def initialize(price:, symbol:)
    super
    @symbol = symbol
    @price = price
  end
end