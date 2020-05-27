# 1 -------------------------------------------------------------------------------------------------
# ASCII String value

# def ascii_value(string)
#   sum = 0
#   string.chars.each { |char| sum += char.ord }
#   sum
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

# 2 ---------------------------------------------------------------------------------------------------
# After midnight (part 1)

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(input_minutes)
#   input_minutes = input_minutes % MINUTES_PER_DAY
#   hours, minutes = input_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# # p time_of_day(3000)

# require 'date'

# def time_and_day(delta_minutes)
#   starting_date = DateTime.new(2020,5,17)
#   day_change = delta_minutes / MINUTES_PER_DAY
#   final_day = starting_date + day_change
  
#   changed_minutes = delta_minutes % MINUTES_PER_DAY
#   "#{final_day.strftime('%A')} #{time_of_day(changed_minutes)}"
# end
    
# p time_and_day(-4231)

# 3 ----------------------------------------------------------------------------------------------------
# After Midnight (part 2)

# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = 1440

# def after_midnight(time)
#   hours = time[0..1].to_i * MINUTES_PER_HOUR
#   minutes = time[-2..-1].to_i
#   total_minutes = hours + minutes
#   total_minutes == MINUTES_PER_DAY ? 0 : total_minutes
# end

# def before_midnight(time)
#   hours = time[0..1].to_i * MINUTES_PER_HOUR
#   minutes = time[-2..-1].to_i
#   total_minutes = MINUTES_PER_DAY - (hours + minutes)
#   total_minutes == MINUTES_PER_DAY ? 0 : total_minutes
# end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0


# 4 -------------------------------------------------------------------------------------------------------------
# Letter Swap

# def swap(string)
#   swapped_words = []
#   string.split.each do |word|
#     if word.length > 1
#       swapped_words << word[-1] + word[1..-2] + word[0]
#     else
#       swapped_words << word
#     end
#   end
#   swapped_words.join(' ')
# end

# def swap_first_and_last(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   swapped_words = []
#   words.split.map do |word|
#     swapped_words << swap_first_and_last(word)
#   end
#   swapped_words.join(' ')
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

# 5 ------------------------------------------------------------------------------------------------------------
# Clean up the words 

# def cleanup(string)
#   cleaned = []
#   string.split.map { |char| cleaned << char.gsub(/[^a-zA-Z]/, ' ') }
  
#   cleaned_chars = cleaned.join(' ').split('')
#   clean_string = []
  
#   cleaned_chars.each do |char|
#     if clean_string.last == char
#       next
#     else
#       clean_string << char 
#     end
#   end
  
#   clean_string.join
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '

# 6 ---------------------------------------------------------------------------------------------------
# Letter Counter Part 1

# def word_sizes(string)
#   words = string.split
#   word_count = {}
#   words.each do |word|
#     word_count[word.length] = 0
#   end
  
#   word_count.each do |key, _|
#     words.each do |word|
#       word_count[key] += 1 if key == word.length
#     end
#   end
  
#   word_count
# end

# def word_sizes(word_string)
#   counts = Hash.new(0)
#   word_string.split.each do |word|
#     counts[word.size] += 1
#   end
#   counts
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

# 7 -----------------------------------------------------------------------------------------------------------
# Letter Counter (part 2)

# def word_sizes(word_string)
#   words = word_string.split
#   words.map! { |word| word.gsub(/[^a-zA-Z]/, '') }
#   counts = Hash.new(0)
#   words.each do |word|
#     counts[word.size] += 1
#   end
#   counts
# end

# def word_sizes(word_string)
#   counts = Hash.new(0)
#   word_string.split.each do |word|
#     cleaned_word = word.delete('^a-zA-Z')
#     counts[cleaned_word.size] += 1
#   end
#   counts
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}


# 8 --------------------------------------------------------------------------------------------------------
# Alphabetical Numbers

# ALPHABET_NUMBERS = [['zero', 0], ['one', 1], ['two', 2], ['three', 3], ['four', 4], ['five', 5],
#                     ['six', 6], ['seven', 7], ['eight', 8], ['nine', 9], ['ten', 10], ['eleven', 11],
#                     ['twelve', 12], ['thirteen', 13], ['fourteen', 14], ['fifteen', 15], ['sixteen', 16],
#                     ['seventeen', 17], ['eighteen', 18], ['nineteen', 19]]


# def alphabetic_number_sort(_)
#   sorted_numbers = ALPHABET_NUMBERS.sort
#   sorted = []
#   sorted_numbers.each { |number| sorted << number[1] }
#   sorted
# end

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by do |number|
#     NUMBER_WORDS[number]
#   end
# end

# p alphabetic_number_sort((0..19).to_a) #== [
# #   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
# #   6, 16, 10, 13, 3, 12, 2, 0
# # ]

# 9 -----------------------------------------------------------------------------------------------------------------------
# ddaaiillyy ddoouubbllee

# def crunch(string)
#   result_string = ''
  
#   string.split('').each do |char|
#     result_string << char if char != result_string[-1]
#   end
  
#   result_string
# end

#p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

# 10 ---------------------------------------------------------------------------------------------------------------------------
# Bannerizer

# def print_in_box(string)
# if string.size > 78
#   message = string[0..78] + (string[79..-1].replace "...")
# else
#   message = string
# end

# dashes = '-' * message.size
# spaces = ' ' * message.size
# puts "+-#{dashes}-+"
# puts "| #{spaces} |"
# puts "| #{message} |"
# puts "| #{spaces} |"
# puts "+-#{dashes}-+"
# end

# def print_in_box(string)
# if string.size > 78
#   line_one = string[0..78]
#   line_two = string[79..156]
  
#   dashes = '-' * line_one.size
#   spaces = ' ' * line_one.size
#   line_two_spaces = ' ' * (80 - line_two.size) 
  
#   puts "+-#{dashes}-+"
#   puts "| #{spaces} |"
#   puts "| #{line_one} |"
#   puts "| #{line_two}#{line_two_spaces}|"
#   puts "| #{spaces} |"
#   puts "+-#{dashes}-+"
# else
#   dashes = '-' * string.size
#   spaces = ' ' * string.size
  
#   puts "+-#{dashes}-+"
#   puts "| #{spaces} |"
#   puts "| #{string} |"
#   puts "| #{spaces} |"
#   puts "+-#{dashes}-+"
# end
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before.To boldly go where no one has gone before.')
# print_in_box('')

