class LinkedListNode

    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next  = nil
    end

    def contains_cycle()
      nodesStack = []
      current = @next
      while !current.nil?
        return false if nodesStack.include?(current.object_id)
        nodesStack << current.object_id
        current = current.next
      end
      return true
    end
end


# a -> b -> c -> d -> e
root = LinkedListNode.new("a")
b = LinkedListNode.new("b")
c = LinkedListNode.new("c")
d = LinkedListNode.new("d")
e = LinkedListNode.new("e")

root.next = b
b.next = c
c.next = d
d.next = e

puts root.contains_cycle()

# a -> b -> c -> d -> a
root = LinkedListNode.new("a")
b = LinkedListNode.new("b")
c = LinkedListNode.new("c")
d = LinkedListNode.new("d")

root.next = b
b.next = c
c.next = d
d.next = root

puts root.contains_cycle()

# a -> b -> c -> d -> b
root = LinkedListNode.new("a")
b = LinkedListNode.new("b")
c = LinkedListNode.new("c")
d = LinkedListNode.new("d")

root.next = b
b.next = c
c.next = d
d.next = b

puts root.contains_cycle()