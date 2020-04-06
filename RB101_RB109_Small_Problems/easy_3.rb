# 1 ----------------------------------------------------------------------------
# SEARCHING 101
# input - integer
# output - integer
# gets 6 user inputs, convert to integer
# store the first 5 inputs in an array
# compare the array inputs with the last input => array.include?('input_6')
# puts "Welcome to number compare. You will enter 5 numbers to be compared with the 6th input."
# numbers = []

# puts "==> Enter the 1st number:"
# first_number = gets.chomp.to_i
# numbers << first_number

# puts "==> Enter the 2nd number:"
# second_number = gets.chomp.to_i
# numbers << second_number

# puts "==> Enter the 3rd number:"
# third_number = gets.chomp.to_i
# numbers << third_number

# puts "==> Enter the 4th number:"
# fourth_number = gets.chomp.to_i
# numbers << fourth_number

# puts "==> Enter the 5th number:"
# fifth_number = gets.chomp.to_i
# numbers << fifth_number

# puts "==> Enter the last number:"
# sixth_number = gets.chomp.to_i

# if numbers.include?(sixth_number)
#   puts "The number #{sixth_number} appears in #{numbers}" 
# else
#   puts "The number #{sixth_number} does not appear in #{numbers}" 
# end

# 2 ------------------------------------------------------------------------------
# ARITHMETIC INTEGER
# input - integer
# output - integer, string

# gets two positive integer inputs, store inputs as variables, convert to integer
# prints +, -, *, /, %, ** operations on the inputs

# def prompt(message)
#   puts "==> #{message}"
# end

# puts "Enter two positive integers to see operations on those numbers."

# puts "==> Enter the first number:"
# first_number = gets.chomp.to_f

# puts "==> Enter the second number:"
# second_number = gets.chomp.to_f

# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
# prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
# prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
# prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
# prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
# prompt("#{first_number} ** #{second_number} = #{first_number ** second_number}")

# 3 ------------------------------------------------------------------------------
# COUNTING THE NUMBER OF CHARACTERS
# input - string
# output - integer

# gets word input, store as a string
# convert to array of characters
# remove white space from the array
# words.length to return length of the string

# words = ''
# puts "Please write word or multiple words:"
# words << gets.chomp

# white_space_removed = words.delete(' ').delete(',')
# length = white_space_removed.chars.length

# puts "There are #{length} characters in '#{words}'"

# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').delete(',').size
# puts "There are #{number_of_characters} characters in '#{input}'"

# 4 ---------------------------------------------------------------------
# MULTIPLY TWO NUMBERS
# input - integer
# output - integer

# def multiply(num1, num2)
#   num1 * num2
# end

# p multiply(5, 3)

# 5 --------------------------------------------------------------------
# SQUARING AN ARGUMENT
# input - integer
# output - integer

# def multiply(num1, num2)
#   num1 * num2
# end

# def power(number, power)
#   if power == 2
#     multiply(number, number)
#   elsif power == 0
#     1
#   elsif power == 1
#     number
#   elsif power > 2
#     number ** power
#   end  
# end

# p power(5, 2)
# p power(-8, 4)

# 6 --------------------------------------------------------------------
# input - integer
# output - boolean

# two integers input
# returns true when exactly one arguement is true
# case if true && false == true
# =>    if true && true == false
# =>    if false && false == false

# def xor?(input1, input2)
#   case
#     when input1 == true && input2 == false
#       return true
#     when input1 == false && input2 == true
#       return true
#     when input1 == true && input2 == true
#       return false
#     when input1 == false && input2 == false
#       return false
#   end
# end

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if !value1 && value2
#   false
# end

# def xor?(value1, value2)
#   (value1 && !value2) || (!value1 && value2)
# end

# p xor?(5.even?, 4.even?)
# p xor?(5.odd?, 4.odd?)
# p xor?(5.odd?, 4.even?)
# p xor?(5.even?, 4.odd?)

# does xor perform short-curcuit evalution of its operands?
# why? why not? does short-circuit evalue in xor operations make sense?

# Ruby uses short-circuit evalaution, so it evaluates the first argument to decide if it should continue with the second
# and , or are given the same precedence
# will preform short circuit evaluation as we need to compare whether one value is true and one is false

# 7 --------------------------------------------------------------------
# ODD LISTS
# input - array
# output - array

# create a new array to store odd indexed numbers
# track the index, increment with each loop
# while the index is less than array size
# => put number into the new array

# def oddities(array)
#   odd_elements = []
#   index = 0
  
#   while index < array.size
#     odd_elements << array[index] if index.odd?
#     index += 1
#   end
  
#   odd_elements
# end

# def oddities(array)
#   odd_elements = []
#   index = 0
  
#   while index < array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end

# def oddities(array)
#   array.select { |number| array.index(number).even? }
# end

# p oddities([2, 3, 4, 5, 6])
# p oddities([1, 2, 3, 4, 5, 6])
# p oddities(['abc', 'def'])
# p oddities([123])
# p oddities([])

# 8 ----------------------------------------------------------------
# PALINDROMIC STRINGS PART 1
# input - string
# output - boolean

# if string == string.reverse return true

# def palindrome?(string)
#   string == string.reverse
# end

# p palindrome?('madam')
# p palindrome?('Madam')
# p palindrome?("madam i'm adam")
# p palindrome?('356653')

# input - array

# def palindrome(array)
#   array == array.reverse
# end

# p palindrome(['a', 'b', 'b', 'a'])
# p palindrome(['a', 'b'])

# input string or array

# def palindrome?(input)
#   chars = []
#   count = 0
  
#   while input.size > count
#     chars << input[count]
#     count += 1
#   end
  
#   chars.reverse.join == chars.join
# end

# p palindrome?(['a', 'b', 'b', 'a'])
# p palindrome?('madamd')

# 9 ----------------------------------------------------------------
# PALINDROMIC STRINGS PART 2
# input - string
# output - boolean

# case-insensitive
# ignore all non-alphanumeric characters

# def real_palindrome?(input)
#   new_input = input.downcase.delete('^a-z0-9')
#   new_input == new_input.reverse
# end

# p real_palindrome?('madam')
# p real_palindrome?('Madam')
# p real_palindrome?("Madam, I'm Adam") 
# p real_palindrome?('356653')
# p real_palindrome?('356a653')
# p real_palindrome?('123ab321')
# 10 ----------------------------------------------------------------
# PALINDROMIC NUMBERS

# def palindromic_number?(number)
#   input = number.to_s
#   input == input.reverse
# end


# p palindromic_number?(34543)
# p palindromic_number?(123210)
# p palindromic_number?(22)
# p palindromic_number?(5)