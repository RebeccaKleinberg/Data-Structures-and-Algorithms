# https://www.sitepoint.com/sorting-algorithms-ruby/
# Refactor to make more DRY
require 'pry'

# def merge_sort(array)
# 	merge_sort_seperator(array)
# end

# def merge_sort_seperator(array)
# 	if array.length <= 1
# 		array
# 	end

# 	middle = array.length/2 -1
# 	binding.pry
# 	left_side = merge_sort_seperator(array[0..middle])
# 	right_side = merge_sort_seperator(array[mid + 1..-1])
# 	merge(left_sorted, right_sorted)
# end

# def merge(left_sorted, right_sorted)
# 	result = []
# 	left = 0 
# 	right = 0

# 	loop do 
# 		break if left >= left_sorted.length && right >= right_sorted.length

# 		if right >= right_sorted.length || ( left < left_sorted.length && left_sorted[left] < right_sorted[right])
# 			result << left_sorted[left]
# 			left += 1
# 		else
# 			result << right_sorted[right]
# 			right += 1
# 		end
# 	end 
# 	result
# end

# puts merge_sort([2, 1, 8, 3, 5, 10, 7]) # [1, 2, 3, 5, 7, 8]
# # n = 7, n/2 = 3, n/2 - 1 = 2

def mergesort(array)
  def merge(left_sorted, right_sorted)
    res = []
    l = 0
    r = 0

    loop do
      break if r >= right_sorted.length and l >= left_sorted.length

      if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
        res << left_sorted[l]
        l += 1
      else
        res << right_sorted[r]
        r += 1
      end
    end

    return res
  end

  def mergesort_iter(array_sliced)
    return array_sliced if array_sliced.length <= 1

    mid = array_sliced.length/2 - 1
    left_sorted = mergesort_iter(array_sliced[0..mid])
    right_sorted = mergesort_iter(array_sliced[mid+1..-1])
    return merge(left_sorted, right_sorted)
  end

  mergesort_iter(array)
end

puts mergesort([2, 1, 8, 3, 5, 10, 7]) # [1, 2, 3, 5, 7, 8]

