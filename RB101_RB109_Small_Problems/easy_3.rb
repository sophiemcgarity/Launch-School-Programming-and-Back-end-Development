# 1 ------------------------------------------------------------------------------------------
# Searching 101
# numbers = []

# num_endings = {1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th'}

# 5.times do |n|
#   index = (n + 1)
#   puts "==> Enter the #{index}#{num_endings[index]} number:"
#   numbers << gets.chomp.to_i
# end

# puts "==> Enter the last number"
# last_number = gets.chomp.to_i

# if numbers.include?(last_number)
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end

# 2 -----------------------------------------------------------------------------------------------------
# Arithmetic Integer

# operators = %i(+ - * / % **)

# puts "==> Enter the first number:"
# first_number = gets.chomp.to_i

# puts "==> Enter the second number:"
# second_number = gets.chomp.to_i

# operators.each do |op|
#   result = [first_number,second_number].reduce(op)
#   puts "#{first_number} #{op} #{second_number} = #{result}"
# end

# 3 ----------------------------------------------------------------------------------------------
# Counting the Number of Characters

# puts "Please write word or multiple words:"
# user_string = gets.chomp
# char_count = user_string.gsub(' ', '').length
# puts "There are #{char_count} characters in \"#{user_string}\"."

# 4 --------------------------------------------------------------------------------------------
# Multiplying Two Numbers 

# def multiply(num1, num2)
#   num1 * num2
# end

# p multiply(5, 3)

# 5 ------------------------------------------------------------------------------------------
# Squaring an Argument

# def square(num)
#   multiply(num, num)
# end

# p square(5)

# def power(num, pow)
#   num ** pow
# end

# p power(3, 2)

# 6 -----------------------------------------------------------------------------------------------
# Exclusive Or

# def xor?(arg1, arg2)
#   return true if arg1 && !arg2
#   return true if arg2 && !arg1
#   false
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

# 7 -------------------------------------------------------------------------------------
# Odd Lists
# def oddities(array)
#   odd_elements = []
  
#   array.each_with_index do |el, index|
#     odd_elements << el if index.even?
#   end
  
#   odd_elements
# end

# def oddities(array)
#   index = 0
#   odd_elements = []
  
#   loop do
#     break if index > array.size
#     odd_elements << array[index]
#     index += 2
#   end
  
#   odd_elements
# end

# def oddities(array)
#   array.select { |el| array.index(el).even? }
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

# 8 ---------------------------------------------------------------------------------------
# Palindromic Strings (part 1)

# def palindrome?(string)
#   string == string.reverse
# end

# def palindrome?(array)
#   array == array.reverse
# end

# def palindrome?(input)
#   forward = ''
#   index = 0
  
#   (input.size).times do
#     forward << input[index]
#     index += 1
#   end
  
#   forward == forward.reverse
# end

# def palindrome?(input)
#   input == input.reverse
# end

# p palindrome?(['a', 'b', 'b', 'a']) == true
# p palindrome?('abba') == true
# p palindrome?("hello") == false
# p palindrome?('356653') == true
# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# 9 -------------------------------------------------------------------------------------------
# Palindromic Strings (part 2)

# def real_palindrome?(input)
#   comparison_input = input.gsub(/[^a-zA-Z0-9]/,'').downcase
#   comparison_input == comparison_input.reverse
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# 10 --------------------------------------------------------------------------------------------
# Palindromic Numbers

# def palindromic_number?(input)
#   input.to_s == input.to_s.reverse
# end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true