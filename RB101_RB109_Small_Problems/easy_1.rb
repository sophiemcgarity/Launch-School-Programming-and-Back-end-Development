# 1 ------------------------------------------------------------------------------------
# Repeat Yourself

# def repeat(string, number)
#   number.times { puts string }
# end

# repeat('Hello', 3)

# 2 -------------------------------------------------------------------------------------------
# Odd

# def is_odd?(number)
#   number.remainder(2) == 1 ? true : false
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true

# 3 --------------------------------------------------------------------------------------
# List of Digits

# def digit_list(number)
#   num = number.to_s.chars
#   num.map(&:to_i)
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]     

# 4 ------------------------------------------------------------------------------------
# How many?

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# def count_occurrences(array)
#   counted_hash = {}
#   downcased_items = array.map! { |item| item.downcase}

#   downcased_items.each do |el|
#     counted_hash[el] = array.count(el)
#   end
  
#   counted_hash.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

# count_occurrences(vehicles)

# 5 -------------------------------------------------------------------------------
# Reverse It (part 1)

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# 6 -------------------------------------------------------------------------------------------
# Reverse It (part 2)

# def reverse_words(string)
#   result = []
  
#   string.split.each do |word|
#     word.length >= 5 ? result << word.reverse : result << word
#   end
  
#   result.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# 7 ------------------------------------------------------------------------------------
# Stringy Strings

# def stringy(number, start_num = 1)
#   output_number = start_num.to_s
#   string_value = ''
  
#   number.times do 
#     string_value += output_number
#     output_number == '1' ? output_number = '0' : output_number = '1'
#   end
  
#   string_value
# end

# puts stringy(6, 1) #== '101010'
# puts stringy(9, 0) #== '010101010'
# puts stringy(4, 0) #== '0101'
# puts stringy(7, 1) #== '1010101'

# 8 ------------------------------------------------------------------------------------
# Array Average

# def average(array)
#   float_result = array.reduce(:+).to_f / array.size.to_f
#   format("%0.3f", float_result)
# end

# puts average([1, 5, 87, 45, 8, 8]) #== 25
# puts average([9, 47, 23, 95, 16, 52]) #== 40

# 9 ------------------------------------------------------------------------------
# Sum of digits

# def sum(integer)
#   digits = integer.to_s.chars
#   digits.map(&:to_i).reduce(:+)
# end

# p sum(23) #== 5
# p sum(496) #== 19
# p sum(123_456_789) #== 45

# 10 ------------------------------------------------------------------------
# What's my bonus?

# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end
  
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000