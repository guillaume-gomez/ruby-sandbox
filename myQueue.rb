class Stack
  def initialize
    @stack = []
  end

  def push(value)
    @stack.push(value)
  end

  def pop()
    @stack.pop()
  end

  def is_empty?
    @stack.size == 0
  end

  def size
    @stack.size
  end
end


class Queue
  attr_accessor :queue, :out_stack

  def initialize
    @in_stack = Stack.new
    @out_stack = Stack.new
  end

  def push(value)
    @in_stack.push(value)
  end

  def pop
    return @out_stack.pop() if @out_stack.size() > 0
    while @in_stack.size > 0
      @out_stack.push(@in_stack.pop())
    end
    val = @out_stack.pop()
  end

end


#Test
my_stack = Stack.new
my_stack.push(1)
my_stack.push(2)
my_stack.push(3)
my_stack.push(4)


puts my_stack.pop()
puts my_stack.pop()
puts my_stack.pop()
puts my_stack.pop()

puts my_stack.is_empty?()


my_queue = Queue.new
my_queue.push(1)
my_queue.push(2)
my_queue.push(3)


puts my_queue.pop()
puts my_queue.pop()
puts my_queue.pop()

puts "------------"


my_queue.push(1)
my_queue.push(2)
my_queue.push(3)


puts my_queue.pop()
puts my_queue.pop()
my_queue.push(45)

puts my_queue.pop()
my_queue.push(55)
puts my_queue.pop()
puts my_queue.pop()
