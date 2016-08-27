# http://matt.weppler.me/2013/08/14/implementing-a-linked-list-in-ruby.html

class Node
	attr_accessor :node, :next

	def initialize(node)
		@node = node
	end

	def self.last(node) # returns the last node
		return node if node.next.nil?
		node = last(node.next)
	end

	def self.node_list(node, msg = nil)
		msg ||=""
		return msg[0..-4] if node.nil?
		node_list(node.next, msg << "#{node.node} -> ")
	end

	def self.reverse(node)
		return node if node.next.nil?

		head = node.next # next node object
		swap = node # points swap variable to the same place in memory as the node
		node.next = nil # sets the next node to nil
		link = head.next # points the link variable to node.next.next

		while link != nil
			head.next = swap
			swap = head
			head = link
			link = link.next
		end

		head.next = swap
		head
	end
end

node = Node.new(1)
1.upto(99) do |i|
  eval("Node.last(node).next = Node.new(i + 1)")
end

puts Node.node_list node
puts Node.node_list Node.reverse(node)