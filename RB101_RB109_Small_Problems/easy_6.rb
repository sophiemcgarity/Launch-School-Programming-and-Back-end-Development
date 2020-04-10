# 1 --------------------------------------------------------------------------
# Cute angles

# --- Problem ---
# inputs: floating point number between 0 - 360
# outputs: string
# rules:
#   - output a string representing an angle in degrees, minutes and seconds
#   - degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds.
#   - a degree has 60 minutes, a minute has 60 seconds
#   - should round the result
#   - format with 2 leading 0's

# --- Data Structures / Algorithm ---
# - assign constants for degree, minute, second conversion
#       - minutes_per_degree = 60
#       - seconds_per_minute = 60
#       - seconds_per_degree = minutes_per_degree * seconds_per_minute
# - find the total number of seconds and round
#   - total_seconds = floating_point_number * seconds_per_degree.round
# - find the degrees and remainder
#     - total_seconds.divmod(seconds_per_degree) returns the degrees and the remaining seconds
# - divide the remaining seconds further to find the minutes and seconds
#     - remaining_seconds.divmod(seconds_per_minute) returns the minutes and seconds
# - format with provided degree symbol constant, each number much use two digits
#     - %02d'%02d"

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(floating_point_number)
#   total_seconds = floating_point_number * SECONDS_PER_DEGREE.round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# puts dms(30) #%(30°00'00")
# puts dms(76.73) #%(76°43'48")

# Further exploration
# Modify the code so it returns a value in the appropriate range when the input is less than 0 or greater than 360?
# Examples
# dms(400) == %(40°00'00")
# dms(-40) == %(320°00'00")
# dms(-420) == %(300°00'00")

# set a constant for total number of degree = 360

# if the number is negative and less than total_degrees
# =>  remove the number from 360 degrees

# if the number is negative and greater than total_degrees
# => divide the number by total_degrees and store the remainder.round
# => degrees = total_degrees - remainder

# if the number is positive and greater than total_degrees
# =>  number = number / 10 divide by ten
# =>  use new number

# DEGREE = "\xC2\xB0"
# DEGREE_TOTAL = 360
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(floating_point_number)
#   total_seconds = floating_point_number * SECONDS_PER_DEGREE.round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# def degree_calculate(number)
#   if number.negative 
#     dms(number)
#   end
# end

# puts degree_calculate(-40)

# 2 -----------------------------------------------------------------------------------------------------------------
# Delete vowels
# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.
# --- Problem ---
# inputs: array of strings
# outputs: array of the same strings
# rules: remove all vowels from the strings
# --- Data Structures / Algorithm ---
# loop through the array using map for transformation
# delete all occurences of vowels String#delete method

# def remove_vowels(array)
#   array.map {|string| string.gsub(/[aeiouAEIOU]/, '') }
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) # %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) # %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) # ['BC', '', 'XYZ']

# 3 -----------------------------------------------------------------------------------------------------------------
# Fibonacci Number Location By Length
# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)
# --- Problem ---
# inputs: integer
# outputs: integer
# rules: return the index of the first fibonacci number thats length is of the specified argument
# --- Data Structures / Algorithm ---
# index = 1

# create an array to store the fibonacci sequence 
# => fibonacci_sequence = [1, 1]
# fibonacci_index = 0

# iterate with times
# => can stop iteration when the length of the number gets to the same as the input integer

# use temp to hold the temporary value because we want to reassign a variable without losing the value
# a = 0
# b = 1

# n.times do
# => temp = a assigning the variable a to a temporary value
# a = b - the value of b is assigned to a
# add up the previous 2 numbers in the sequence
# b = temp + b
# return a

# break if the number.digits.length returned == input_integer

# => each interation of times +1 to the index counter

# output index
# def find_fibonacci_index_by_length(input_integer)
#   index = 1
#   first = 1
#   second = 1
  
#   loop do 
#     fibonacci = first + second
#     break if first.digits.length >= input_integer
#     index += 1
    
#     first = second
#     second = fibonacci
#   end
#   index
# end

# p find_fibonacci_index_by_length(2) # 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) # 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) # 45
# p find_fibonacci_index_by_length(100) # 476
# p find_fibonacci_index_by_length(1000) # 4782
# p find_fibonacci_index_by_length(10000) # 47847

# 4 ----------------------------------------------------------------------------------------------------------------------------------
# Reversed Arrays
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. 
# The return value should be the same Array object.

# --- Problem ---
# inputs: array
# outputs: same array object
# rules: reverse the elements of the array in place without using the Array#reverse method
# --- Data Structures / Algorithm ---
# assign the right and left most index values to variables
# => right_index = 0
# => left_index = -1
# assign these values to each other
# => array[right_index], array[left_index] = array[left_index], array[right_index]
# add 1 to the right index
# -1 from left index
# loop while right index < array.size / 2

# def reverse!(array)
#   left_index = 0
#   right_index = -1
  
#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end
#   array
# end

# list = [1,2,3,4]
# p reverse!(list)

# 5 ----------------------------------------------------------------------------------------------------------------
# Reversed Arrays (Part 2)
# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.
# --- Problem ---
# inputs: array
# outputs: same array elements, different array object
# rules: reverse the elements in an array and do not modify the orginal list
# --- Data Structures / Algorithm ---
# create a new array to store the items
# assign an index value to -1 to get items from the end of the array
# => index = -1
# loop over the array, append to the new array object starting from the last element
# -1 from the index value with each iteration
# break if new_array.length >= array.size
# return new_array

# def reverse(array)
#   index = -1
#   new_array = []
  
#   while new_array.length < array.length
#     new_array << array[index]
#     index -= 1
#   end
#   new_array
# end

# def reverse(array)
#   result = []
#   array.reverse_each {|num| result << num }
#   result
# end

# def reverse(array)
#   array.each_with_object([]) {|i, a| a.unshift(i)}
# end

# list = [1, 3, 2]                  
# p reverse(list)
# p reverse(%w(a b e d c))

# 6 -------------------------------------------------------------------------------------------------------------------
# Combining Arrays
# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.
# --- Problem ---
# inputs: two arrays
# outputs: array
# rules: merge two arrays and remove duplicate numbers
# --- Data Structures / Algorithm ---
# flatten the arrays to combine multiple into one
# => arrays.flatten
# find all the unique values in the flattened array
# => arrays.uniq

# def merge(array_one, array_two)
#   a = [array_one, array_two]
#   a.flatten.uniq
# end

# def merge(array_one, array_two)
# # array_one.union(array_two)
#   array_one | array_two
# end

# p merge([1, 3, 5], [3, 6, 9])

# 7 -------------------------------------------------------------------------------------------------------------
# Halvsies
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.
# --- Problem ---
# inputs: array
# outputs: two arrays
# rules: 
#  a method that takes an array, and splits the array in the middle of the elements, returning a nest array.
#  if an odd number the middle element should be placed in the first array
# --- Data Structures / Algorithm ---
# store elements in first half and second half array
# => first_half = []
# => second_half = []
# loop over each element in the array
# if array.length.even?
  # =>  length of nested arrays = (array.length / 2)
  # if first_half.length < array.length / 2
  # => add element to first_half
  # else 
  # => add element to second half
# if array.length.odd?
# loop over each element in the array
# if the first_half < array.length to float rounded up
# =>  add to first half array
# else 
# => add to second half array

# def halvsies(array)
#   first_half = []
#   second_half = []
  
#   if array.length.even?
#     array.each do |num|
#       if first_half.length < (array.length / 2)
#         first_half << num
#       else
#         second_half << num
#       end
#     end
#   else
#     array.each do |num|
#       if first_half.length < (array.length / 2.to_f).ceil
#         first_half << num
#       else
#         second_half << num
#       end
#     end
#   end
#   result = [first_half, second_half]
#   result
# end

# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

# p halvsies([1, 2, 3, 4])
# p halvsies([1, 2, 3, 4, 5])
# p halvsies([5])
# p halvsies([])

# 8 --------------------------------------------------------------------------------------------------------------------------
# Find the duplicate
# Given an unordered array and the information that exactly one value in the array occurs twice (every other value occurs exactly once), how would you determine which value occurs twice? Write a method that will find and return the duplicate value that is known to be in the array.
# --- Problem ---
# inputs: array
# outputs: array
# rules: find the exactly one value that occurs twice in the array
# --- Data Structures / Algorithm ---
# loop over each element in an array
# add each element of the array to a new array
# if number is contained in the new array return the number
# => if new_array.any?(num)
# => return num
# else continue adding to the new array

# def find_dup(array)
#   new_array = []
#   array.each do |num|
#     if new_array.any?(num)
#       return num
#     else
#       new_array << num
#     end
#   end
# end

# def find_dub(array)
#   array.find { |element| array.count(element) == 2}
# end

# p find_dub([1, 5, 3, 1])
# p find_dub([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58])

# 9 ------------------------------------------------------------------------------------------------------
# Does My List Include This?
# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.
# --- Problem ---
# inputs: array, integer
# outputs: boolean
# rules: search through an array with the search value input, return true if the value is in the array and false if not
# --- Data Structures / Algorithm ---
# loop over the array and find any instances of the input value
# => array.any?(input_value)

# def include?(array, input)
#   array.any?(input)
# end

# p include?([1,2,3,4,5], 3) # true
# p include?([1,2,3,4,5], 6) # false
# p include?([], 3) # false
# p include?([nil], nil) # true
# p include?([], nil) # false

# 10 -------------------------------------------------------------------------------------------
# Right Triangles
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
# --- Problem ---
# inputs: integer
# outputs: string
# rules: take a positive integer and display a right triangle. The diagonal side should be on the left
# --- Data Structures / Algorithm ---
# line_number = 1
# for 5
# ----* spaces = number - line_number , * = number - spaces
# increment line number by 1 on each iteration
# => line_line += 1
# ---**
# --***
# -****
# *****
# loop until line_number = input_number

# def triangle(value)
#   line_number = 1
  
#   while line_number <= value
#     spaces = value - line_number
#     stars = value - spaces
#     puts (' ' * spaces) + ('*' * stars)
#     line_number += 1
#   end
# end

# ***** 
# -**** 
# --***
# ---**
# ----*

# count = 1

# def triangle(num)
#   count = 1
#   while count < num + 1
#     puts (' ' * (count - 1)) + ('*' * ((num + 1) - count))
#     count += 1
#   end
# end

# # first iteration
# # while 1 < 5 + 1
#   # puts ' ' * 1 - 1 + '*' * 6 - 1 => 5 *
# # second iteration
# # count = 2
# # while 2 < 5 + 1
#   # puts ' ' * 2 - 1 + '*' * 5 + 1 - 2 => ' '4*

# triangle(5)



