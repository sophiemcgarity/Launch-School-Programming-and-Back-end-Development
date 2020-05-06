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

p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''
p repeater('Hello') #== "HHeelllloo"

# 8 ---------------------------------------------------------------------------
