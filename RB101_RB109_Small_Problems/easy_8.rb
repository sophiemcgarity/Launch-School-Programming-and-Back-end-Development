require 'pry'
# 1. -----------------------------------------------
# Sum of Sums

# def sum_of_sums(array)
#   current_value = 0
#   result = []
  
#   array.each { |num| result << current_value += num }
  
#   result.reduce(:+)
# end

# p sum_of_sums([3, 5, 2]) # (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) #== 4
# p sum_of_sums([1, 2, 3, 4, 5]) #== 35

# 2 -----------------------------------------------------------------
# Madlibs

# def prompt(string)
#   puts ">> #{string}"
# end

# prompt('Enter a noun: ')
# noun = gets.chomp

# prompt('Enter a verb: ')
# verb = gets.chomp

# prompt('Enter a adjective: ')
# adjective = gets.chomp

# prompt('Enter a adverb: ')
# adverb = gets.chomp

# sentence_one = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# sentence_two = "You like to #{verb} with your #{adjective} #{noun} #{adverb}?"

# puts [sentence_one, sentence_two].sample

# 3. ------------------------------------------------------------
# Leading substrings

# def substrings_at_start(string)
#   result = []
#   previous_char = ''
#   chars = string.split('')
  
#   chars.map do |char|
#     result << previous_char + char
#     previous_char = result[-1]
#   end
  
#   result
# end

# 4. -----------------------------------------------------
# All Substrings

# def substrings(string)
#   string.gsub!(/[^A-Za-z0-9_]/, '')
#   result = []
  
#   (0..string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     result.concat(substrings_at_start(this_substring))
#   end
  
#   result
# end

# 5 -----------------------------------------------------------------
# Palindrom Substrings

# def palindromes(string)
  
#   result = []
#   substrings(string).each do |substring|
#     result << substring if palindrome?(substring)
#   end
  
#   result
# end

# def palindrome?(string)
#   string.downcase == string.downcase.reverse && string.size > 1 
# end

# p palindromes('abcd')
# p palindromes('madam')
# p palindromes('hello-madam-did-madam-goodbye') 

# 6 ------------------------------------------------------------------
# fizzbuzz

# def fizzbuzz(start_num, end_num)
#   output = []
  
#   (start_num..end_num).each do |num|
#     if num % 3 == 0 && num % 5 == 0
#       output << 'FizzBuzz'
#     elsif num % 3 == 0
#       output << 'Fizz'
#     elsif num % 5 == 0
#       output << 'Buzz'
#     else
#       output << num
#     end
#   end
  
#   output.join(', ')
# end

# p fizzbuzz(1, 15)

# 7 -------------------------------------------------------------------------------
# Double char (part 1)

def repeater(string)
  result = ''
  chars = string.split('')
  
  chars.map { |char| result << char << char }
  
  result
end

# p repeater("Good job!") #== "GGoooodd  jjoobb!!"
# p repeater('') #== ''
# p repeater('Hello') #== "HHeelllloo"

# 8 ---------------------------------------------------------------------------
# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
  
# def double_consonants(string)
#   result = ''
  
#   string.each_char do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
  
#   result
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

# 9 -------------------------------------------------------------------------------
# Convert number to reversed array of digits

# def reversed_number(num)
#   string = num.to_s
#   string.reverse.to_i
# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1


# 10 ----------------------------------------------------------------------------------
# Get the middle character

# def center_of(string)
#   index = string.length / 2
  
#   if string.length.odd?
#     string[index] 
#   else 
#     string[index - 1] + string[index]
#   end
# end

# p center_of('I love ruby')
# p center_of('Launch') #== 'un'