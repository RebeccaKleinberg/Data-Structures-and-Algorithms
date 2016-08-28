# my own work - life at whole foods
# first in, first out
# T is the data type
# queue will have a first node and a last node, which you can quickly access, but not in between
# add: if last node is not null (i.e. defined), last.next = T object which has item as its data, new last is the T object  
# remove: returns the data (not the node, not the queue) - and removes the first node in the queue
# peek: returns the data but does remove node from the queue
# strech: write a recursive function that will remove all nodes in the queue ** pops all elements off ** 

class MyQueue
	
	attr_reader :data, :next

	def initialize(data)
		@data = data
		@first = nil
		@last = nil
	end

	def add(item)
	end

	def remove
	end

	def peek
	end

	def isEmpty?
	end
end

q = MyQueue.new
q.add("1")
q.add("2")
q.add("3") # q.container = ["1", "2", "3"]
p q.container.to_a
puts "****"
q.remove
p q.container
