# http://zvkemp.github.io/blog/2014/04/25/binary-search-trees-in-ruby/

require 'pry'

module BinarySearchTree
	class EmptyNode
		def include?(*)
			false
		end

		def insert(*)
			false
		end

		def inspect
			"{}"
		end
	end

	class Node

		attr_reader :value
		attr_accessor :left, :right

		def initialize(v)
			@value = v
			@left = EmptyNode.new
			@right = EmptyNode.new
		end

		def insert(v)
			case value <=> v
			when 1 then insert_left(v)
			when -1 then insert_right(v)
			when 0 then false # value already present
			end
		end

		def include?(v)
			case value <=> v
			when 1 then left.include?(v)
			when -1 then right.include?(v)
			when 0 then true
			end
		end

		def inspect
			"{#{value}::#{left.inspect}|#{right.inspect}}"
		end

		private
			def insert_left(v)
				left.insert(v) || self.left = Node.new(v)
			end

			def insert_right(v)
				right.insert(v) || self.right = Node.new(v)
			end
	end
end

tree = BinarySearchTree::Node.new(10)               #=> {10:{}|{}}
[5, 15, 3].each {|value| tree.insert(value) } #=> {10:{5:{3:{}|{}}|{}}|{15:{}|{}}}
puts tree.include?(10) #=> true
puts tree.include?(15) #=> true
puts tree.include?(20) #=> false
puts tree.include?(3)  #=> true
puts tree.include?(2)  #=> false