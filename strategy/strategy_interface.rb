module StrategyInterface
  class StrategyInterfaceMethodNotImplemented < NoMethodError; end

  def self.included(klass)
    klass.send(:included, StrategyInterface::Methods)
    klass.send(:extended, StrategyInterface::Methods)
  end

  module Methods
    def method_not_implemented(klass)
      # #<MatchData "in `eval'" 1:"eval">
      caller.first.match(/in \`(.+)\'/)
      # https://docs.ruby-lang.org/en/2.4.0/globals_rdoc.html
      # $1 - The Nth group of the last successful match. May be > 1.
      method_name = $1
      raise IteratorInterface::InteratorInterfaceNotImplemented.new("#{klass.class.name} needs to implement '#{method_name}' for interface #{self.name}!")
    end
  end
end