# 1 --------------------------------------------------------------------------------------------------------------
# Combine Two Lists

# def interleave(arr1, arr2)
#   new_arr = []
#   index = 0
#   arr1.size.times do 
#     new_arr << arr1[index] << arr2[index]
#     index += 1
#   end
#   new_arr
# end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


# 2 -------------------------------------------------------------------------------------------------------------
# Lettercase Counter

# def letter_case_count(string)
#   counters = { lowercase: 0, uppercase: 0, neither: 0 }
#   string.chars.each do |char|
#     case
#     when ('a'..'z').include?(char) then counters[:lowercase] += 1
#     when ('A'..'Z').include?(char) then counters[:uppercase] += 1
#     else counters[:neither] += 1
#     end
#   end
#   counters
# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# 3 ----------------------------------------------------------------------------------------------------
# Capitalize Words

# def word_cap(string)
#   capitalized_words = []
#   string.split(' ').each { |word| capitalized_words << word.capitalize }
#   capitalized_words.join(' ')
# end

# def word_cap(string)
#   capitalized_words = []
  
#   string.upcase.split(' ').each do |word| 
#     capitalized_words << word[0] + word[1..-1].downcase
#   end
  
#   capitalized_words.join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# 4 ---------------------------------------------------------------------------------------------------------------------
# Swap case

# def swapcase(string)
#   swapped_chars = []
#   string.chars.each do |char|
#     if char == char.downcase
#       swapped_chars << char.upcase
#     else
#       swapped_chars << char.downcase
#     end
#   end
#   swapped_chars.join
# end


# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


# 5 --------------------------------------------------------------------------------------------------------------
# Staggered Caps (part 1)

# def staggered_case(string)
#   staggered_chars = []
#   string.chars.each_with_index do |char, index|
#     if index.even?
#       staggered_chars << char.upcase
#     elsif index.odd?
#       staggered_chars << char.downcase
#     end
#   end
#   staggered_chars.join
# end

# p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'

# 6 ----------------------------------------------------------------------------------------------------------------

# def staggered_case(string)
#   staggered_chars = []
#   switch = true

#   string.chars.each do |char|
#     if ('a'..'z').include?(char.downcase)
#       if switch == true
#         staggered_chars << char.upcase
#       else
#         staggered_chars << char.downcase
#       end
#       switch = !switch
#     else
#       staggered_chars << char
#     end
#   end

#   staggered_chars.join
# end

# def staggered_case(string, include_numbers)
#   staggered_chars = []
#   switch = true
  
#   if include_numbers == true
#     string.chars.each do |char|
#       if switch == true
#         staggered_chars << char.upcase
#       else
#         staggered_chars << char.downcase
#       end
#       switch = !switch
#     end
#   else
#     string.chars.each do |char|
#       if ('a'..'z').include?(char.downcase)
#         if switch == true
#           staggered_chars << char.upcase
#         else
#           staggered_chars << char.downcase
#         end
#         switch = !switch
#       else
#         staggered_chars << char
#       end
#     end
#   end

#   staggered_chars.join
# end

# p staggered_case('I Love Launch School!', true) 
# p staggered_case('ALL CAPS', false)
# p staggered_case('ignore 77 the 444 numbers', true)

# 7 -----------------------------------------------------------------------------------------------------
# Multiplicative Average

# def show_multiplicative_average(array)
#   total = array.reduce(:*).to_f
#   size = array.size
#   average = total / size
#   puts "The result is #{format('%.3f', average)}"
# end

# show_multiplicative_average([2, 5, 7, 11, 13, 17])

# 8 -------------------------------------------------------------------------------------------------------
# Multiple Lists

# def multiply_list(array1, array2)
#   result = []
  
#   array1.each_with_index do |num, index|
#     result << num * array2[index]
#   end
  
#   result
# end

# def multiply_list(array1, array2)
#   array1.zip(array2).map { |arr| arr.reduce(:*) }
# end

# p multiply_list([3, 5, 7], [9, 10, 11])

# 9 ------------------------------------------------------------------------------------------------------
# Multiple All Pairs

# def multiply_all_pairs(arr1, arr2)
#   pairs = []
#   arr1.each do |num1|
#     arr2.each do |num2|
#       pairs << [num1, num2]
#     end
#   end
  
#   pairs.map { |arr| arr.reduce(:*) }.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2])

# 10 -------------------------------------------------------------------------------------------------------
# The End Is Near But Not Here

# def penultimate(string)
#   words_array = string.split(' ')
#   words_array[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# find the middle word from a sentence

# def middle_word(string)
#   words = string.split
#   index = words.length / 2
#   case
#     when words.length <= 1 then string
#     when words.length.even? then words[index - 1]
#     when words.length.odd? then words[index]
#   end
# end

# p middle_word('one two three')