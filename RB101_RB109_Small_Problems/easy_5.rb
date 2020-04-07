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
