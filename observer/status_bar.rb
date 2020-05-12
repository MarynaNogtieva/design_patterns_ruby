require 'securerandom'
require 'observer'
class StatusBar < Observer
  attr_accessor :stocks
  attr_reader :id

  def initialize
    @stocks = []
    @id = SecureRandom.hex(10)
  end

  def add_stock(stock)
    stocks << stock
    stock.add_observer(self)
  end

  def show
    stocks&.each do |stock|
      puts stock
    end
  end

  def price_changed
    puts 'Price changed in status bar'
    show
  end
end