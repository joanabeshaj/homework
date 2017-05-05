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


class Map 
  attr_accessor :map_ary
  
  def initialize
    @map_ary = []
  end
  
  def has_key?(key)
    map_ary.each do |pair| #Do not use self; you haven't defined an #each method for Map
      return true if pair[0] == key
    end
    false
  end
  
  def find_index(key)
    map_ary.each_with_index do |pair, idx|
      return idx if pair[0] == key
    end
  end
  
  def assign(key, value)
    if has_key?(key)
      pos = find_index(key)
      self.map_ary[pos] = [key, value]
    else
      map_ary << [key,value] 
    end
    self.map_ary
  end
  
  def lookup(key)
    found = map_ary.select { |pair| pair[0] == key }
    found.empty? ? nil : found[0][1]
  end
  
  def remove(key)
    map_ary.delete_if { |pair| pair[0] == key }
  end
  
  def show
    @map_ary
  end
  
end

puts "\n\nTesting the Map class"
  my_map = Map.new
p my_map.assign(1,2)
p my_map.assign(3,4)
p my_map.assign(5,6)
p my_map.assign(5,8)
p my_map.assign(1,23)
puts my_map.lookup(5)
puts my_map.lookup(10)
p my_map.remove(1)
p my_map.show