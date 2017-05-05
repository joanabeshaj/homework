class Stack
  attr_accessor :ivar
  
  def initialize
    @ivar = []
  end

  def add(el)
    ivar.push(el)
  end 

  def remove
    ivar.pop
  end

  def show
    @ivar
  end
end

my_stack = Stack.new
p my_stack.add(2)
p my_stack.add(4)
p my_stack.add(6)
puts "\nJust removed the last element of the stack; it was #{my_stack.remove}."

p my_stack.show