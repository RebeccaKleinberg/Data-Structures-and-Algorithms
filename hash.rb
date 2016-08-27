# http://sarahunderstandsverylittle.tumblr.com/post/80142286191/building-a-hash-table-in-ruby

class MyHash
	attr_reader :container

	def initialize 
		@container = [] # container will be a double nested array with key, value pairs
	end

	def assign_index(k) # k is a string
		obj_id(k) % 100
	end

	def obj_id(k)
		k = k.to_sym # must change from str to sym so that it always have the same obj id
		k.object_id
	end

	def insert(k, v)
		index = assign_index(k)
		container[index] ||= []
		container[index] << [k, v]
	end

	def find(k)
		index = assign_index(k)
		container[index].each do |pair|
			if pair[0] == k
				return pair[1]
			end
		end
	end
end
