# 1 -----------------------------------------------------------------------------
# SHORT LONG SHORT

# input - string
# output - string

# input.size to determine the length
# if input_1 > input_2
# =>  output = input_2 + input_1 + input_2
# and vicaversa

# def short_long_short(input_1, input_2)
#   if input_1.length > input_2.length
#     input_2 + input_1 + input_2
#   else
#     input_1 + input_2 + input_1
#   end
# end

# p short_long_short('abc', 'defgh')
# p short_long_short('abcde', 'fgh')
# p short_long_short('', 'xyz')

# 2 ----------------------------------------------------------------------------
# WHAT CENTURY IS THAT?
# input - integer
# output - string
# 1st, 2nd, 3rd, 4th, 5th, 6th, 7th, 8th, 9th, 10th, 11th

# convert the integer to string
# if number ends with 1, st, unless 11 then th
# if number ends with 2, nd, unless 12 then th
# if numbers ends with 3, rd, unless 13 then th
# else ends with th

# century = year/100 + 1
# century = century - 1 if the year % 100 == 0

# def century(year)
#   century = year/100 + 1
#   century -= 1 if year % 100 == 0
#   century = century.to_s
  
#   case
#     when century.end_with?('11') || century.end_with?('12') || century.end_with?('13') 
#       century << 'th'
#     when century.end_with?('1')
#       century << 'st'
#     when century.end_with?('2')
#       century << 'nd'
#     when century.end_with?('3')
#       century << 'rd'  
#     else
#       century << 'th'
#   end 
#   century
# end

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10
  
#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# p century(2000)
# p century(2001)
# p century(1965)
# p century(256)
# p century(5)
# p century(10103)
# p century(1052)
# p century(1127)
# p century(11201)

# 3 ----------------------------------------------------------------------------
# LEAP YEARS PART 1
# input - integer
# output - boolean

# year divisible by 4, but not 100
# if year / 4 == 0 && year / 100 != 0 
# => leap_year == true

# year not divisible by 100, but divisible by 400
# if year / 100 != 0 && year / 400 != 0 
# => leap_year = true

# def leap_year?(year)
#   if (year % 4 == 0) && (year % 100 != 0)
#     true
#   elsif (year % 400 == 0)
#     true
#   else
#     false
#   end
# end

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end  
# end

# p leap_year?(2016)
# p leap_year?(2015)
# p leap_year?(2100)
# p leap_year?(2400)
# p leap_year?(240000)
# p leap_year?(240001)
# p leap_year?(2000)
# p leap_year?(1900)
# p leap_year?(1752)
# p leap_year?(1700)
# p leap_year?(1)
# p leap_year?(100)
# p leap_year?(400)

# 4 ------------------------------------------------------------
# LEAP YEARS PART 2
# if the year is before 1752, leap years occur ever 4 years

# def leap_year?(year)
#   if year < 1752 && year % 4 == 0
#     true
#   elsif year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end  
# end

# p leap_year?(2016)
# p leap_year?(2015)
# p leap_year?(2100)
# p leap_year?(2400)
# p leap_year?(240000)
# p leap_year?(240001)
# p leap_year?(2000)
# p leap_year?(1900)
# p leap_year?(1752)
# p leap_year?(1700)
# p leap_year?(1)
# p leap_year?(100)
# p leap_year?(400)

# 5 -----------------------------------------------------------------------------
# MULTIPLES OF 3 AND 5

# input - integer
# output - integer

# loop over the range of numbers
# => push to numbers array if num % 3 == 0 || num % 5 == 0
# total the numbers array
# => array sum

# def multiple?(number, divisor)
#   number % divisor == 0
# end

# def multisum(number)
#   numbers = []
#   (1..number).to_a.select do |num|
#     numbers << num if multiple?(num, 3) || multiple?(num, 5)
#   end
#   numbers.reduce(:+)
# end

# p multisum(3)
# p multisum(5)
# p multisum(10)
# p multisum(1000)

# 6 -----------------------------------------------------------------------------
# RUNNING TOTALS
# input - array
# output - array

# store each number number in the totals array
# output the first number in the array
# add num[0] add num[1]

# def running_total(numbers)
#   sum = 0
#   numbers.map {|number| sum += number}
# end

# def running_total(numbers)
#   sum = 0
#   numbers.each_with_object([]) {|number, array| array << sum += number }
# end

# p running_total([2, 5, 13])
# p running_total([14, 11, 7, 15, 20])

# 7 -----------------------------------------------------------------------------
# CONVERT A STRING TO A NUMBER!

# input - string
# output - integer

# reassign the string hash key to the value
# if the digits key matches the array value, change to hash value

# DIGITS = {
#   '0' => 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9
# }

# def string_to_integer(string)
#   digits = string.chars.map {|str| str = DIGITS[str]}
  
#   value = 0
#   digits.each {|digit| value = 10 * value + digit }
#   value
# end

# p string_to_integer('4321')
# p string_to_integer('570')

# Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.

# HEX = {
#   '0' => 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
# }

# def hex_to_integer(hex)
#   digits = hex.chars.map {|str| str = HEX[str]}
#   hex_value = digits.reduce(:+)
#   hex_value
# end

# p hex_to_integer('BB1')

# 8 ------------------------------------------------------------------------------------
# Convert a String to a Signed Number!

# DIGITS = {
#   '0' => 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9
# }

# def string_to_integer(string)
#   digits = string.chars.map {|str| str = DIGITS[str]}
  
#   value = 0
#   digits.each {|digit| value = 10 * value + digit }
#   value
# end

# def string_to_signed_integer(string)
#   if string[0] == '-'
#     string.delete_prefix!('-')
#     digits = string.chars.map {|str| str = DIGITS[str]}
#     value = 0
#     digits.each {|digit| value = 10 * value + digit }
#     value * -1
#   elsif string[0] == '+'
#     string.delete_prefix!('+')
#     digits = string.chars.map {|str| str = DIGITS[str]}
#     value = 0
#     digits.each {|digit| value = 10 * value + digit }
#     value
#   else
#     digits = string.chars.map {|str| str = DIGITS[str]}
#     value = 0
#     digits.each {|digit| value = 10 * value + digit }
#     value
#   end
# end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end  
# end

# refactored solution
# def string_to_signed_integer(string)
#   if string[0] == '-' || string[0] == '+'
#     new_integer = string_to_integer(string[1..-1])
#     string[0] == '-' ? -new_integer : new_integer
#   else
#     string_to_integer(string)
#   end
# end

# p string_to_signed_integer('-33')
# p string_to_signed_integer('+570')
# p string_to_signed_integer('230')


# 9 ----------------------------------------------------------------------------
# Convert a Number to a String!
# input - positive interger or 0
# output - string

# create a digit to string hash of each of the values to convert
# seperate the number by each digit into an array
# map each integer to the coresponding string in the hash

# STRINGS = {
#   0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
# }

# def integer_to_string(numbers)
#   digits = numbers.digits.reverse
#   strings = digits.map {|digit| digit = STRINGS[digit]}
#   strings.join
# end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']



p integer_to_string(4321) # '4321'
p integer_to_string(0) # '0'
p integer_to_string(5000) # '5000'

