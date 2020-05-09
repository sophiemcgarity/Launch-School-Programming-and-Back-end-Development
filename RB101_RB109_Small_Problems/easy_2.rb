# 1 -----------------------------------------------------------------------------------
# How old is Teddy?
# puts "Enter a name"
# name = gets.chomp

# if name == ''
#   name = 'Teddy'
# end

# age = (20..200).to_a.sample

# puts "#{name} is #{age} years old!"

# 2 ------------------------------------------------------------------------
# How big is the room?

# Square meters and feet output

# SQUARE_METER_TO_SQUARE_FOOT = 10.7639

# puts 'Enter the length of the room in meters:'
# length = gets.chomp

# puts 'Enter the width of the room in meters:'
# width = gets.chomp

# square_meters = (length.to_f * width.to_f).round(2)
# square_foot = (square_meters * SQUARE_METER_TO_SQUARE_FOOT).round(2)

# puts "The area of the room is #{square_meters} square meters (#{square_foot} square feet


# square feet, square inches, square centimeter

# SQUARE_METER_TO_SQUARE_FOOT = 10.7639
# SQUARE_FEET_TO_SQUARE_INCHES = 144

# puts 'Enter the length of the room in feet:'
# length = gets.chomp

# puts 'Enter the width of the room in feet:'
# width = gets.chomp

# square_feet = (length.to_f * width.to_f).round(2)
# square_inches = (square_feet * SQUARE_FEET_TO_SQUARE_INCHES).round(2)
# square_centimeters = ((square_feet / SQUARE_METER_TO_SQUARE_FOOT) * 100).round(2)

# puts "The area of the room is #{square_feet} square feet, #{square_inches} square inches, #{square_centimeters} square centimeters."

# 3 -----------------------------------------------------------------------
# Tip calculator

# puts "What is the bill?"
# bill = gets.chomp.to_f

# puts "What is the tip percentage?"
# tip_input = gets.chomp.to_f

# tip_percentage = (tip_input / 100).round(2)
# tip_total = (tip_percentage * bill).round(2)

# puts "The tip is $#{format("%0.2f", tip_total)}"
# puts "The total is $#{format("%0.2f", tip_total + bill)}"

# 4 ----------------------------------------------------------------------------
# When will I retire?
# require 'date'

# puts "What is your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?"
# retire_age = gets.chomp.to_i

# year = Date.today.year
# years_left = (retire_age - age)
# retire_year = (year + years_left)

# puts "Its #{year}. You will retire in #{retire_year}."
# puts "You only have #{years_left} of work to go!"

# 5 ----------------------------------------------------------------------------------
# Greeting a user

# puts "What is your name?"
# name = gets.chomp

# if name[-1] == '!'
#   puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# 6 ---------------------------------------------------------------------------
# Odd

# (1..99).each do |num|
#   puts num if num.odd?
# end

# 1.upto(99).select do |num|
#   puts num if num % 2 == 1
# end

# 7 ----------------------------------------------------------------------------
# Even
# (1..99).each { |num| puts num if num.even? }

# 8 -----------------------------------------------------------------------
# Sum or Product of Consecutive Integers

# puts ">> Enter a number greater than 0:"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute sum, 'p' to compute the product."
# calculation = gets.chomp

# sum = 0
# product = 1

# if calculation == 's'
#   sum = (1..number).reduce(:+)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif calculation == 'p'
#   product = (1..number).reduce(:*)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else 
#   puts "Sorry unknown input."
# end
