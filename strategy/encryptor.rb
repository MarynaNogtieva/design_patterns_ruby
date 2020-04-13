require_relative 'strategy_interface'
class Encryptor
  include StrategyInterface

  def encrypt
    Encryptor.method_not_implemented(self)
  end
end