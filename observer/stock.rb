require_relative 'abstract_stock'

class Stock < AbstractStock
  attr_accessor :price, :symbol

  def initialize(price:, symbol:)
    super()
    @symbol = symbol
    @price = price
  end

  def to_s
    "Stock:
    symbol=#{symbol},
    price=#{price}"
  end

  def set_price(price:)
    self.price = price
    notify_observers
  end
end