# my own work - life at whole foods
# first in, first out
# T is the data type
# queue will have a first node and a last node, which you can quickly access, but not in between
# add: if last node is not null (i.e. defined), last.next = T object which has item as its data, new last is the T object  
# remove: returns the data (not the node, not the queue) - and removes the first node in the queue
# peek: returns the data but does remove node from the queue
# strech: write a recursive function that will remove all nodes in the queue ** pops all elements off ** 
# O(1)
require 'pry'


class Queue
	class Node
		
		attr_accessor :node, :next, :first, :last

		def initialize(node)
			@node = node
			@first = true
			@last = true
		end

		def add(item) # add to the end, when you add, this node becomes the last 
			self.last = false
			self.next = Queue::Node.new(item)
		end

		def remove # remove from the start. When you remove, the next node becomes the first
			# return node if node.next.nil?
			# end
		end

		def peek
		end

		def isEmpty?
		end
	end
end
# puts q = MyQueue.new("Rebecca")
# puts q.add("is")

