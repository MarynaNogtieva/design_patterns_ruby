require_relative 'observer_interface'
require_relative 'observer'
require_relative 'status_bar'
require_relative 'stock_list_view'
require_relative 'abstract_stock'
require_relative 'stock'
# When data on object changes and we need to notify other objects about these changes.

class Demo
  def self.run
    stock1 = Stock.new(price: 10.00, symbol: 'ABC')
    stock2 = Stock.new(price: 13_000.00, symbol: 'XYC')
    stock3 = Stock.new(price: 60.00, symbol: 'RKJ')

    status_bar = StatusBar.new
    stock_list_view = StockListView.new

    status_bar.add_stock(stock1)
    status_bar.add_stock(stock2)

    stock_list_view.add_stock(stock1)
    stock_list_view.add_stock(stock2)
    stock_list_view.add_stock(stock3)

    stock1.set_price(price: 20.00)
    stock3.set_price(price: 13_122.00)

    stock1.remove_observer(status_bar)

    stock1.set_price(price: 15.00)
    stock3.set_price(price: 13_129.00)
  end
end