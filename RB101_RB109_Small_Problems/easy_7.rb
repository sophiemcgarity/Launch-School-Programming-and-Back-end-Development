require 'pry'
# 1 ----------------------------------------------------------------------

# def interleave(array1, array2)
#   new_array = []

#   array1.each_with_index do |element, index|
#     new_array << element << array2[index]
#   end

#   new_array
# end

# p interleave([1, 2, 3], ['a', 'b', 'c'])

# 2 ----------------------------------------------------------------------
# Lettercase Counter

# def letter_case_count(string)
#   result = { lowercase: 0, uppercase: 0, neither: 0 }
#   chars = string.chars
  
#   chars.each do |char|
#     case char
#     when /[a-z]/
#       result[:lowercase] += 1
#     when /[A-Z]/
#       result[:uppercase] += 1
#     else
#       result[:neither] += 1
#     end  
#   end
  
#   result
# end
  
# letter_case_count('abCdef 123')
# letter_case_count('AbCd +Ef')

# 3 ----------------------------------------------------------------------
# Capitalize Words

# def word_cap(input_string)
#   words = input_string.split(' ')
#   caps = []
  
#   words.each { |word| caps << word.capitalize }
#   result = caps.join(" ")
#   result
# end

# def word_cap(words)
#   words_array = words.split.map do |word|
#     word.capitalize
#   end
#   words_array.join(' ')
# end

# without capitalize method

# def word_cap(input_string)
#   words = input_string.split(' ')
#   caps = []
  
#   words.each { |word| caps << word[0].upcase + word[1..word.length] }
  
#   result = caps.join(" ")
#   result
# end

# def word_cap(words)
#   words_array = words.split(' ')
#   words_array.each do |word|
#     word[0] = word[0].upcase
#     word[1..-1] = word[1..-1].downcase
#   end
#   words_array.join(' ')
# end

# puts word_cap('four score and seven')
# puts word_cap('the javaScript language')
# puts word_cap('this is a "quoted" word')

# 4 ----------------------------------------------------------------------
# Swap case

# def swapcase(words)
#   swapped_chars = words.split('').map do |char|
#     case char
#     when char.downcase
#       char.upcase
#     when char.upcase
#       char.downcase
#     else
#       char
#     end
#   end
#   swapped_chars.join('')
# end

# puts swapcase('CamelCase')
# puts swapcase('Tonight on XYZ-TV')    

# 5 ----------------------------------------------------------------------
# Staggered Caps (part 1)
# def staggered_case(string)
#   result = ''
#   need_upper = true
  
#   string.chars.each do |char|
#     if need_upper == true
#       result += char.upcase
#       need_upper = false
#     elsif need_upper == false
#       result += char.downcase
#       need_upper = true
#     else
#       result += char
#     end
#   end
#   result
# end

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# puts staggered_case('I Love Launch School!')
# puts staggered_case('ALL_CAPS')
# puts staggered_case('ignore 77 the 444 numbers')

# 6 ----------------------------------------------------------------------
# Staggered Caps (part 2)
# def staggered_case(string)
#   result = ''
#   need_upper = true
  
#   string.chars.each do |char|
#     if char == " "
#       result += char
#       next
#     elsif need_upper == true
#       result += char.upcase
#       need_upper = false
#     elsif need_upper == false
#       result += char.downcase
#       need_upper = true
#     end
#   end
  
#   result
# end

# def staggered_case(string)
#   result = ''
#   need_upper = true
  
#   string.chars.each do |char|
#     if char =~ /[a-z]/i
#       if need_upper
#         result += char.upcase
#       else
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     else
#       result += char
#     end
#   end
#   result
# end

# puts staggered_case('I Love Launch School!') 
# puts staggered_case('ALL CAPS')
# puts staggered_case('ignore 77 the 444 numbers')


# 7 -----------------------------------------------------------
# Multiplicative Average

# def show_multiplicative_average(array)
#   multiplied_result = 1.to_f
  
#   array.each { |num| multiplied_result *= num }
#   # multiplied_result = array.reduce(:*)
  
#   average = (multiplied_result / array.length)
  
#   puts "The result is #{format('%.3f', average)}"
# end

# show_multiplicative_average([3, 5])
# show_multiplicative_average([6])
# show_multiplicative_average([2, 5, 7, 11, 13, 17])


# 8 -----------------------------------------------------------
# Multiply Lists

# def multiply_list(array1, array2)
#   # output = []
  
#   # array1.each_with_index do |num, index|
#   #   output << num * array2[index]
#   # end
  
#   # output
# end

# def multiply_list(array1, array2)
#   array1.zip(array2).map { |arr| arr.reduce(:*) }
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) # [27, 50, 77]

# 9 -----------------------------------------------------------
# Multiply All Pairs

# def multiply_all_pairs(array1, array2)
#   result = []
  
#   array1.each do |num|
#     array2.each do |el|
#       result << num * el
#     end
#   end
  
#   result.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]


# 10 --------------------------------------------------------------
# The End Is Near But Not Here

# def penultimate(string)
#   words = string.split(' ')
#   words[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# Further exploration
# middle number
  
def middle_word(string)
  words = string.split(' ')
  index = (words.length.to_f / 2.to_f).round(half: :up)
  if index < 1
    string
  else
    words[index - 1]
  end
end

p middle_word('School is great!') # => 'is'
p middle_word('Launch School is great!') # => 'School'
p middle_word('') # => ''
p middle_word('School') # => 'School'
