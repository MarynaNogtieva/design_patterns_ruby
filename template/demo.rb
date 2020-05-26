require_relative 'service_desk_window'
# https://refactoring.guru/design-patterns/template-method
# Template Method is a behavioral design pattern that defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.
# The Template Method pattern suggests that you break down an algorithm into a series of steps, turn these steps into methods, and put a series of calls to these methods inside a single “template method.” 
class Demo
  def self.run
    window = ServiceDeskWindow.new
    window.close
  end
end
