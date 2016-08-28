# https://www.sitepoint.com/sorting-algorithms-ruby/
require 'pry'

def bubble_sort(array)
	n = array.length
	loop do
		swapped = false

		(n - 1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				swapped = true
			end
		end # if it goes thru this w/o ever swapping, flag remains false and outer loop breaks.
		

		break unless swapped
	end
	array
end

puts bubble_sort([1, 7, 5]) # => [1, 2, 4, 5, 7]
# n = 5
# times do => 4