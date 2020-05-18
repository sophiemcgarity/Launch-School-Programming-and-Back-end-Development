# 1 -------------------------------------------------------------------------------------------
# Short Long Short
# def short_long_short(string1, string2)
#   long = ''
#   short = ''
  
#   if (string1.length < string2.length)
#     long = string2
#     short = string1
#   else
#     long = string1
#     short = string2
#   end
  
#   short + long + short
# end

# def short_long_short(string1, string2)
#   string1.length < string2.length ? (string1 + string2 + string1) : (string2 + string1 + string2)
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# 2 --------------------------------------------------------------------------------------------
# What century is that?

# def century(year)
#   year.to_s[-1] == '0' ? century = (year / 100) : century = (year / 100) + 1
#   ending = century.to_s[-2..-1]
  
#   if ending == '11' || ending == '12' || ending == '13'
#     "#{century}th"
#   else
#     case century.to_s[-1]
#     when '1'
#       "#{century}st"
#     when '2'
#       "#{century}nd"
#     when '3'
#       "#{century}rd"
#     else
#       "#{century}th"
#     end
#   end
# end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

# 3 ----------------------------------------------------------------------------------------------------
# Leap years (part 1)

# def leap_year_calculate?(year)
#   if year % 4 == 0 && year % 100 != 0
#     true
#   elsif year % 400 == 0
#     true
#   else
#     false
#   end
# end

#p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

# 4 -------------------------------------------------------------------------------------------------
# Leap years (part 2)

# def leap_year?(year)
#   if year < 1752 && year % 4 == 0
#     true
#   elsif year % 4 == 0 && year % 100 != 0
#     true
#   elsif year % 400 == 0
#     true
#   else
#     false
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true

# 5 -----------------------------------------------------------------------------------------------------
# Multiples of 3 and 5

# def multisum(num)
#   multiples = []
#   (1..num).each { |n| multiples << n if n % 3 == 0 || n % 5 == 0 }
#   multiples.reduce(:+)
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

# 6 -------------------------------------------------------------------------------------------------------
# Running Totals

# def running_total(array)
#   sum = 0
#   array.map { |num| sum += num }
# end

# def running_total(array)
#   if array == []
#     array
#   else
#     total = [array[0]]
    
#     (array[1..-1]).each do |num|
#       total << total[-1] + num
#     end
    
#     total
#   end
# end

# def running_total(array)
#   sum = 0
#   array.each_with_object([]) do |num, array|
#     array << sum += num
#   end
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

# 7 -------------------------------------------------------------------------------------------------
# Convert a string to a number!

# STRING_TO_INTEGER_CONVERTOR = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

# def string_to_integer(string)
#   number = []
#   string.chars.map do |char|
#     number << STRING_TO_INTEGER_CONVERTOR[char]
#   end
#   number.inject do |value, digit|
#     (value * 10) + digit 
#   end
# end

# p string_to_integer('4321') #== 4321
# p string_to_integer('570') #== 570

# Convert hexadecimal to integer
# HEX_TO_INTEGER = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, 
#                   '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 
#                   'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }

# def hexadecimal_to_integer(hex)
#   numbers = []
  
#   hex.chars.map do |char|
#     numbers << HEX_TO_INTEGER[char.upcase]
#   end
  
#   numbers.reduce do |value, digit|
#     (value * 16) + digit
#   end
# end

# p hexadecimal_to_integer('4D9f') == 19871

# 8 -----------------------------------------------------------------------------------------------
# Convert a String to a Signed Number!

# def string_to_signed_integer(string)
#   case string[0]
#   when '-'
#     -string_to_integer(string[1..-1])
#   when '+'
#     string_to_integer(string[1..-1])
#   else
#     string_to_integer(string)
#   end
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100

# 9 -------------------------------------------------------------------------------------------
# Convert a Number to a String!
# INTEGER_STRING_CONVERSION = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
#                               6 => '6', 7 => '7', 8 => '8', 9 => '9'}
                              
# def integer_to_string(number)
#   result = ''
  
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(INTEGER_STRING_CONVERSION[remainder])
#     break if number == 0
#   end
  
#   result
# end

# p integer_to_string(4321)

# 10 -----------------------------------------------------------------------------------------------
# Convert a Signed Number to a String!

# def signed_integer_to_string(number)
#   case 
#   when number > 0
#     integer_to_string(number).prepend('+')
#   when number < 0 
#     integer_to_string(number * -1).prepend('-')
#   else
#     integer_to_string(number)
#   end
# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'