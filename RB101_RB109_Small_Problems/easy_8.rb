# 1 ------------------------------------------------------------------------------------------------------------------
# Sum of Sums

# def sum_of_sums(array)
#   total = 0
#   total_values = []
#   array.each do |num|
#     total_values << total += num
#   end
#   total_values.reduce(:+)
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)


# 2 -------------------------------------------------------------------------------------------------------------
# Madlibs

# puts "Enter a noun: "
# noun = gets.chomp
# puts "Enter a verb: "
# verb = gets.chomp
# puts "Enter an adjective: "
# adjective = gets.chomp
# puts "Enter an adverb"
# adverb = gets.chomp

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}?"

# 3 ---------------------------------------------------------------------------------------------------------
# Leading Substrings

# def substrings_at_start(string)
#   substrings = []
#   string.size.times do |index|
#     substrings << string[0..index]
#   end
#   substrings
# end 

# p substrings_at_start('abc') == ['a', 'ab', 'abc']
# p substrings_at_start('a') == ['a']
# p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# 4 ------------------------------------------------------------------------------------------------------
# All Substrings

# def substrings(string)
#   all_substrings = []
#   string.size.times do |start_index|
#     all_substrings.concat(substrings_at_start(string[start_index..-1]))
#   end
#   all_substrings
# end

# p substrings('abcde')

# 5 --------------------------------------------------------------------------------------------
# Palidromic Substrings

# def palindromes(string)
#   string.gsub!(/[^a-zA-Z]/, '')
#   palins = []
#   substrings(string).each do |str|
#     palins << str if str == str.reverse && str.size > 1
#   end
#   palins
# end

# p palindromes('mada-m-')

# 6 ----------------------------------------------------------------------------------------
# Fizzbuzz

# def fizzbuzz(num1, num2)
#   result = []
#   (num1..num2).each do |num|
#     case
#     when num % 5 == 0 && num % 3 == 0 then result << 'FizzBuzz'
#     when num % 5 == 0                 then result << 'Buzz'
#     when num % 3 == 0                 then result << 'Fizz'
#     else result << num.to_s
#     end
#   end
#   result.join(', ')
# end

# p fizzbuzz(1, 15)

# 7 ---------------------------------------------------------------------------------------
# Double Char (part 1)

# def repeater(string)
#   result = ''
#   string.chars.each { |char| result << char << char }
#   result
# end

# p repeater('Hello') == "HHeelllloo"

# 8 --------------------------------------------------------------------------------------
# Double char (part 2)

# CONSONANTS = []

# ('a'..'z').map do |letter|
#   ('aeiou').include?(letter) ? next : CONSONANTS << letter
# end

# def double_consonants(string)
#   result = ''
#   string.chars.each do |char|
#     CONSONANTS.include?(char.downcase) ? result << (char * 2) : result << char
#   end
  
#   result
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

# 9 ---------------------------------------------------------------------------------------------
# Convert number to reversed array of digits

# def reversed_number(num)
#   num.to_s.reverse.to_i
# end

# p reversed_number(12345)

# 10 --------------------------------------------------------------------------------------
# Get the middle character

# def center_of(string)
#   index = (string.size / 2)
#   string.size.odd? ? string[index] : string[index - 1, 2]
# end
  
  
# p center_of('I love ruby') == 'e'
# p center_of('Launch') == 'un'
