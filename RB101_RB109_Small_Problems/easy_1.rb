# UNDERSTAND THE PROBLEM
# input
# output
# edge cases? focus on input e.g. empty
# failure / bad input

# DATA STRUCTURE
# input data and their own requirements

# ALGORITHM
# write a solution in language
# verify with examples / test cases

# ABSTRACTION
# avoid soliving big problems, describe in 1 - 2 sentences
# ------------------------------------------------------------------

# 1 --------------------------------------------------------------
# input - string and integer
# output - string

# data structure input - string

# algorithm
# method takes a string and a positive integer(num)
# print string break if counter == num

# def repeat(string, num)
#   counter = 0
#   while counter < num
#     puts string
#     counter += 1
#   end
# end

# def repeat(string, num)
#   num.times { puts string }
# end
# repeat('Hello', 3)

# 2 --------------------------------------------------------------
# input - one integer
# output - boolean, true if absolute value is odd
# data structure - integer
# cannot use #odd? or #even?
# assume input is valid
# take one a positive or negative integer, if odd == true, else false

# def is_odd?(num)
#   if num % 2 != 0
#     true
#   else
#     false
#   end
# end

# def is_odd?(num)
#   num % 2 == 1
# end

# def is_odd?(num)
#   num % 2 != 0
# end

# def is_odd?(num)
#   if num.remainder(2) == 0
#     false
#   else
#     true
#   end
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# 3 --------------------------------------------------------------
# input - positive integer
# output - array of integers
# data structures - integer, array, string
# input an integer, convert to array, seperate by each character, map each character to array

# def digit_list(num)
#   num.to_s.chars.map(&:to_i)
# end

# def digit_list(num)
#   numbers = num.to_s.split('')
#   numbers.map(&:to_i)
# end

# p digit_list(12345)

# 4 --------------------------------------------------------------
# input - array
# output - hash

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}
  
  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end
  
  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end


count_occurrences(vehicles)


# 5 ----------------------------------------------------------------
# REVERSE IT (PART 1)
# input - string
# output - string 

# split the string by ' '
# reverse index position

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# p reverse_sentence('')
# p reverse_sentence('Hello World')
# p reverse_sentence('Reverse these words')



# 6 ----------------------------------------------------------------
# REVERSE IT (PART 2)
# input - string
# output - string

# input string can contain one or more words
# if string.size >= 5 reverse the word

# def reverse_words(sentence)
#   words_array = sentence.split(' ')
  
#   words_array.each do |word|
#     word.reverse! if word.size >= 5
#   end

#   words_array.join(' ')
# end

# def reverse_words(sentence)
#   words = []
  
#   sentence.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end
  
#   words.join(' ')
# end

# def reverse_words(sentence)
#   sentence.split.map{ |word| word.size >= 5 ? word.reverse : word }.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')   

# 7 ----------------------------------------------------------------
# STRINGY STRINGS

# input - integer
# output - string

# print 1 then 0 until string length is equal to the integer input
# alternate prints
# if previous was 1
#   then print 0

# def stringy(num)
#   string = ''
   
#   until string.size >= num
#     string << "10"
#   end
  
#   if num.odd?
#     string.chop
#   else
#     string
#   end
# end

# if the string index is even = 1
# if string index odd = 0
# def stringy(size, option = 1)
#   numbers = []
  
#   if option == 0
#     size.times do |index|
#       number = index.odd? ? 1 : 0
#       numbers << number
#     end
#   else
#     size.times do |index|
#       number = index.even? ? 1 : 0
#       numbers << number
#     end
#   end
  
#   numbers.join
# end

# puts stringy(6)
# puts stringy(9, 0)


# 8 ----------------------------------------------------------------
# Array Average

# input - array
# output - intger

# array.size = number to divide by
# for each number in the input add to the total

# def average(numbers_array)
#   total = 0
#   divider = numbers_array.size
  
#   numbers_array.each do |num|
#     total += num
#   end
  
#   average = total / divider
#   average
# end

# def average(numbers_array)
#   numbers_array.reduce(:+).to_f / numbers_array.count
# end

# puts average([1, 5, 87, 45, 8, 8])
# puts average([9, 47, 23, 95, 16, 52])

# 9 ----------------------------------------------------------------
# SUM OF DIGITS

# input - integer
# output - integer

# convert to string, split by char, convert to in and add

# def sum(number)
#   total = 0
#   numbers_array = number.to_s.split('')

#   numbers_array.each do |num|
#     total += num.to_i
#   end
  
#   total
# end

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end

# puts sum(23)
# puts sum(496)
# puts sum(123_456_789)

# 10 ----------------------------------------------------------------
# WHAT'S MY BONUS?
# input - integer, boolean
# output - integer

# if true, bonus = number/2
# if false, bonus = 0

# def calculate_bonus(number, bonus)
#   bonus ? (number/2) : 0
# end

# puts calculate_bonus(2800, true)
# puts calculate_bonus(1000, false)
# puts calculate_bonus(50000, true)