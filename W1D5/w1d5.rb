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

puts "Tests for the Stack class"
my_stack = Stack.new
p my_stack.add(2)
p my_stack.add(4)
p my_stack.add(6)
p my_stack.remove
p my_stack.show


class Queue
  attr_accessor :queue_ary
  def initialize
    @queue_ary = []
  end
  
  def enqueue(el)
    @queue_ary.push(el)
  end
  
  def dequeue
    @queue_ary.shift
  end
  
  def show
    @queue_ary
  end
end

puts "\n\nTests for the Queue class"
my_queue = Queue.new
p my_queue.enqueue("Steve")
p my_queue.enqueue("Warren")
p my_queue.enqueue("Bill")

p my_queue.dequeue
p my_queue.show