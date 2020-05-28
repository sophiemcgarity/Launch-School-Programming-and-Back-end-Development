# 1 --------------------------------------------------------------------------------------------------------------------------------------------------
# Cute angles

# SECONDS_IN_A_DEGREE = 3600
# SECONDS_IN_A_MINUTE = 60
# MINUTES_IN_A_DEGREE = 60
# DEGREE = "\xC2\xB0"

# def dms(number)
#   total_seconds = number * SECONDS_IN_A_DEGREE
#   total_minutes, seconds = total_seconds.divmod(SECONDS_IN_A_MINUTE)
#   degrees, minutes = total_minutes.divmod(MINUTES_IN_A_DEGREE)
#   puts format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# def dms(number)
#   number = number % 360
#   total_seconds = number * SECONDS_IN_A_DEGREE
#   total_minutes, seconds = total_seconds.divmod(SECONDS_IN_A_MINUTE)
#   degrees, minutes = total_minutes.divmod(MINUTES_IN_A_DEGREE)
#   puts format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# dms(400)
# dms(-40)
# dms(-420)
# dms(30) 
# dms(76.73) 
# dms(254.6) 
# dms(93.034773) 
# dms(0) 
# dms(360)

# 2 --------------------------------------------------------------------------------------------------------------------------------------------------
# Delete vowels

# def remove_vowels(array)
#   array.map do |el|
#     el.delete "aeiouAEIOU"
#   end
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# 3 --------------------------------------------------------------------------------------------------------------
# Fibonacci Number Location By Length

# def find_fibonacci_index_by_length(number)
#   sequence = [1, 1]
  
#   loop do
#     sequence << sequence[-2] + sequence[-1]
#     break if sequence[-1].to_s.size >= number
#   end
  
#   sequence.size
# end

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476

# 4 -------------------------------------------------------------------------------------------------
# Reversed Arrays (part 1)

# def reverse!(items)
#   index = -1
  
#   loop do
#     items.insert(index, items[0])
#     items.delete_at(0)
#     index -= 1
#     break if (index * -1) >= items.size
#   end
  
#   items
# end

# def reverse!(items)
#   left_index = 0
#   right_index = -1
  
#   until left_index >= (items.size / 2)
#     items[left_index], items[right_index] = items[right_index], items[left_index]
#     left_index += 1
#     right_index -= 1
#   end
  
#   items
# end

# list = [1, 2, 3, 4]
# p reverse!(list)

# 5 -----------------------------------------------------------------------------------------------------
# Reversed Arrays (part 2)

# def reverse(list)
#   new_list = []
#   index = -1
  
#   until new_list.size >= list.size
#     new_list << list[index]
#     index -= 1
#   end
  
#   new_list
# end

# def reverse(list)
#   list.reverse_each.each_with_object([]) do |item, array|
#     array << item
#   end
# end
# p reverse([1,2,3,4])

# 6 --------------------------------------------------------------------------------------------------
# Combining Arrays

# def merge(arr1, arr2)
#   new_arr = arr1 + arr2
#   new_arr.uniq
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# 7 --------------------------------------------------------------------------------------------------
# Halvsies

# def halvsies(array)
#   num = (array.size / 2.0).round
#   group_1 = []
#   group_2 = []
  
#   until group_1.size >= num 
#     group_1 << array[0]
#     array.delete_at(0)
#   end

#   group_2 = array
#   [group_1, group_2] 
# end

# def halvsies(array)
#   middle = (array.size / 2.0).round
#   group_1 = array[0..(middle - 1)]
#   group_2 = array[middle..-1]
#   [group_1, group_2]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# 8 -------------------------------------------------------------------------------------------------------
# Find the Duplicate

# def find_dup(num_list)
#   num_count = Hash.new
#   num_list.each do |item|
#     num_count[item] = num_list.count(item)
#   end
#   num_count.each { |key, value| puts key if value == 2 } 
# end

# find_dup([1, 5, 3, 1])

# 9 ------------------------------------------------------------------------------------------------------
# Does My List Include This?

# def include?(array, comparision)
#   array.each { |el| return true if el == comparision }
#   false
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false

# 10 ------------------------------------------------------------------------------------------------------
# Right Triangles

# def triangle(input)
#   spaces = (input - 1)
#   stars = 1
#   until stars > input
#     puts (' ' * spaces) + ('*' * stars)
#     stars += 1
#     spaces -= 1
#   end
# end

# triangle(5)


# def reverse_triangle(input)
#   stars = input
#   spaces = 0
  
#   input.times do
#     puts (' ' * spaces) + ('*' * stars) 
#     stars -= 1
#     spaces += 1
#   end
  
# end  
  
# reverse_triangle(5)
