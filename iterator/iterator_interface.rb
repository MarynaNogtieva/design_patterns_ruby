module IteratorInterface
  class InteratorInterfaceNotImplemented < NoMethodError; end

  def self.included(klass)
    klass.send(:include, IteratorInterface::Methods)
    klass.send(:extend, IteratorInterface::Methods)
  end

  module Methods
    def method_not_implemented(klass)
      caller.first.match(/in \`(.+)\'/)
        method_name = $1
        raise IteratorInterface::InteratorInterfaceNotImplemented.new("#{klass.class.name} needs to implement '#{method_name}' for interface #{self.name}!")
    end
  end
end