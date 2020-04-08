# 1 -------------------------------------------------------------------------------------
# ASCII String Value
# Write a mthod that determeines and returns the ASCII string value of a string
# ASCII string value is the sum of the ASCII values of every characters in the string

# input - string
# output - integer
# split into array of characters
# loop over array, call .ord on each character and add to total

# def ascii_value(string)
#   total = 0
#   string.chars.each {|char| total += char.ord}
#   total
# end

# p ascii_value('Four score') # 984
# p ascii_value('Launch School') # 1251
# p ascii_value('a') # 97
# p ascii_value('') # 0

# 2 -----------------------------------------------------------------------------------
# After Midnight (part 1)
# number represents minutes before or after midnight
# if number is positive, the time is after midnight
# if number is negative, the time is before midnight

# write a method that takes a time using this minute-based formate and returns the time of day in 24 hour format (hh:mm). 
# works with any integer input

# input - integer
# output - string

# divmod - returns an array containing the quotient and modulus obtained by dividing num by numeric
# syntax: (number1).divmod(number2)
# Parameter - the function takes two number number1 and number2 whose integer division and remainder is returned
# Return value - the integer division value and the remainder

# % - modulus

# Kernel#format - returns string from applying format_string
# => syntax - %[flags][width][.precision]type

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(minutes)
#   minutes = minutes % MINUTES_PER_DAY
#   hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes) 
# end

# def time_of_day(integer)
#   minute = integer % MINUTES_PER_HOUR
#   hour = integer / MINUTES_PER_HOUR % HOURS_PER_DAY
#   format('%02d:%02d', hour, minute)
# end

# Approach using Ruby's Date and Time Classes
# Consider the day of the week - assume minutes is the number before or after midnight between saturday and Sunday
# => in such a method -4231 would need to produce a return value of Thursday 01:29

# require 'date'
# def time_of_day(minutes)
#   starting_date = DateTime.parse('24th Nov 2019 00:00:00')
#   # DateTime.parse - parses the given representation of date and time, and creates a DateTime object
#   # here an arbitrary sunday is is used
#   result = starting_date + (minutes / 1440.0) 
#   # the starting date sunday + (input number / number of minutes in a day)
#   # adding the minutes/1440 adjusts the date
#   result.strftime('%A %H:%M') 
#   # strftime - formats date according to the directives in the given format string
#   # => %A - the full weekday
#   # => %H:%M - 24-hour time
# end

# p time_of_day(0) # "00:00"
# p time_of_day(-3) # "23:57"
# p time_of_day(35) # "00:35"
# p time_of_day(-1437) # "00:03"
# p time_of_day(3000) # "02:00"
# p time_of_day(800) # "13:20"
# p time_of_day(-4231) # "01:29"


# 3 --------------------------------------------------------------------------------
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# input - string
# output - integer

# aftermidnight method
# convert the string to number of minutes
# total_minutes = hours_to_minutes + minutes
# => first two numbers 00: x number of minutes in an hour - hours_to_minutes
# => second two numbers :00 + to minute total - minutes
# time_after_midnight = 0 + minutes

# beforemidnight method
# convert string to minutes
# => convert index 0+1, 3+4 to integer for hours and minutes
# => hours * 60 to convert to minutes
# 1440 - minutes 

# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = 1440

# def after_midnight(string)
#   if string.to_i < 24
#     hours = string[0] + string[1]
#     minutes = string[3] + string[4]
#     hours_to_minutes = hours.to_i * MINUTES_PER_HOUR
#     total_minutes = hours_to_minutes + minutes.to_i
#     total_minutes
#   else
#     return 0
#   end
# end

# def before_midnight(string)
#   if string.to_i == 24 || string.to_i == 0
#     return 0
#   else
#     hours = string[0] + string[1]
#     minutes = string[3] + string[4]
#     hours_to_minutes = hours.to_i * MINUTES_PER_HOUR
#     total_minutes = hours_to_minutes + minutes.to_i
#     time = MINUTES_PER_DAY - total_minutes
#     time
#   end
# end

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(string)
#   hours, minutes = string.split(':').map(&:to_i) 
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(string)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(string)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end

# p after_midnight('00:00') # 0
# p before_midnight('00:00') # 0
# p after_midnight('12:34') # 754
# p before_midnight('12:34') # 686
# p after_midnight('24:00') # 0
# p before_midnight('24:00') # 0

# assume 24:00 is a valid format

# How would these methods change if you were allowed to use the Date and Time classes?

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# require 'time'

# def after_midnight(string)
#   time = Time.parse(string)
#   hours = time.strftime("%k").to_i
#   minutes = time.strftime("%M").to_i
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(string)
#   time = MINUTES_PER_DAY - after_midnight(string)
#   time = 0 if time == MINUTES_PER_DAY
#   time
# end

# p after_midnight('00:00') # 0
# p before_midnight('00:00') # 0
# p after_midnight('12:34') # 754
# p before_midnight('12:34') # 686
# p after_midnight('24:00') # 0
# p before_midnight('24:00') # 0


# 4 --------------------------------------------------------------------------------------
# Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# input - string
# output - string

# split string into array of each word
# create a method swaping first and last character of each word
# => index[0] = index[-1]
# use the character swap method on each word


# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(string)
#   swapped_string = string.split.map {|word| swap_first_last_characters(word)}
#   swapped_string.join(' ')
# end

# p swap('Oh what a wonderful day it is') # 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') # 'ebcdA'
# p swap('a') # 'a'


# 5 ------------------------------------------------------------------------------------------------
# Clean up the words
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
# if one or more space in a row, remove excess

# def cleanup(string)
#   string.gsub(/[\W]/, ' ').squeeze(' ')
# end

# ALPHABET = ('a'..'z').to_a

# def cleanup(string)
#   clean_letters = []
  
#   string.each_char do |char|
#     if ALPHABET.include?(char)
#       clean_letters << char
#     else
#       clean_letters << ' ' unless clean_letters.last == ' '
#     end
#   end
#   clean_letters.join
# end

# p cleanup("---what's my +*& line?")

# 6 ---------------------------------------------------------------------------------------
# Letter counter(part 1)
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# input - string
# output - hash

# split the string into words
# loop over each word and find the length
# length = hash key, the number of words at that length = value
# increment a word.length counter by 1 
# => if the word length key already exists + 1
# => else create new key

# def word_sizes(string)
#   counts = Hash.new(0)
#   words = string.split(' ')
 
#   words.each do |word|
#     counts[word.size] += 1
#   end
  
#   counts
# end


# p word_sizes('Four score and seven.') # { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') # { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") # { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') # {}

# 7 ---------------------------------------------------------------------------------
# Letter Counter part 2
# update so non-letters are not counted e.g. it's = 3, not 4

# def word_sizes(string)
#   counts = Hash.new(0)
#   words = string.split(' ')
 
#   words.each do |word|
#     cleanword = word.delete('^a-zA-Z')
#     counts[cleanword.size] += 1
#   end
  
#   counts
# end

# p word_sizes('Four score and seven.') # { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') # { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") # { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') # {}

# 8 ------------------------------------------------------------------------------
# Alphabetic Numbers
# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number: 
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# input - array
# output - array

# store word values as an array of strings
# use the sort_by method
# => sorts enum using a set of keys generated by mapping the values in enum through the given block
# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by {|number| NUMBER_WORDS[number]}
# end


# p alphabetic_number_sort((0..19).to_a) 

# 9 ----------------------------------------------------------------------------------------------
# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# input - string
# output - string

# create array of each character
# input character into clean array
# unless last character = current characters 

# def crunch(string)
#   cleaned_array = []
#   string.split('').each do |char|
#     cleaned_array << char unless cleaned_array.last == char
#   end
#   cleaned_array.join
# end

# def crunch(text)
#   clean_text = ''
  
#   text.each_char do |char| 
#     clean_text << char unless clean_text[-1] == char
#   end
 
# clean_text
# end

# p crunch('ddaaiillyy ddoouubbllee') # 'daily double'
# p crunch('4444abcabccba') # '4abcabcba'
# p crunch('ggggggggggggggg') # 'g'
# p crunch('a') # 'a'
# p crunch('')


# 10 --------------------------------------------------------------------------------------------------
# Bannerizer
# Write a method that will take a short line of text, and print it within a box.

# input +----+ lines before string the length of the string

# def print_in_box(string)
#   line_size = string.length + 2
#   horizontal_line = "+" + ("-" * line_size) + "+"
#   vertical_line = '|'
#   spacer = " " * (string.length + 2)
  
#   puts horizontal_line
#   puts vertical_line + spacer + vertical_line
#   puts vertical_line + " " + string + " " + vertical_line
#   puts vertical_line + spacer + vertical_line
#   puts horizontal_line
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('Meep beep meep')

# 11 ----------------------------------------------------------------------------------------------------
# Spin Me Around In Circles
# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. 
# Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

# def spin_me(str)
#   str.split.each do |word|
#     word.reverse! 
#   end.join(" ")
# end

# spin_me("hello world") # "olleh dlrow"

# calling split on the str creates a new object
# str.split spilts the string into an array of each word
# => calling each on this array reverses each word and the orginal gets mutated
# => the array created by splitting the string is mutated
# => array.join creates a new object, an d a new string is returned
