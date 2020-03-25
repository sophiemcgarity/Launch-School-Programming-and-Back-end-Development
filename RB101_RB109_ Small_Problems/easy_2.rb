# 1 ----------------------------------------------------------------
# HOW OLD IS TEDDY?
 
# output - integer

# def random_age(name = "Teddy")
#   age = rand(20..200)
#   name = gets.chomp
#   "#{name} is #{age} years old!"
# end

# puts "Enter a name"
# puts random_age

# 2 -----------------------------------------------------------------
# HOW BIG IS THE ROOM?
# input - string
# output - integer

# get length(m) and width(m) from the user
# multiply length by width = area meters
# area meters * 10.7639 = square feet

# SQFEET_TO_SQMETERS = 0.3048
# CEN_TO_INCH = 0.393701

# puts "Enter the length of the room in feet:"
# length = gets.to_f

# puts "Enter the width of the room in feet:"
# width = gets.to_f

# square_feet = (length * width).round(2)
# square_meters = (square_feet * SQFEET_TO_SQMETERS).round(2)
# square_centimeters = (square_meters * 100).round(2)
# square_inches = (square_centimeters * CEN_TO_INCH).round(2)
  
# puts "The area of the room is #{square_feet} square feet, #{square_meters} square meters, #{square_centimeters} square centimeters, #{square_inches} square inches."

# 3 -------------------------------------------------------------------
# TIP CALCULATOR
# input - integer
# output - integer

# takes a total integer amount
# take tip integer / 100 for percantage
# multiply bill by tip percentage
# total = bill + tip
# output total and tip

# puts "Welcome to tip calculator."

# puts "What is the bill?"
# bill = gets.to_f

# puts "What is the tip percentage?"
# percentage = gets.to_f

# tip = (bill * (percentage/100)).round(2)
# total = (bill + tip).round(2)

# tip = ('%.2f' % tip)
# total = ('%.2f' % total)

# puts "The tip is $#{tip}"
# puts "The total is $#{total}"

# 4 -------------------------------------------------------------------
# WHEN WILL I RETIRE?
# input - integer
# output - integer

# get age input
# get retirement input
# working_number_of_years = retirement - age
# retirement_year = current_year + working_number_of_years

# CURRENT_YEAR = Time.now.year

# puts "Welcome to retirement calculator!"
# puts "What is your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?"
# retirement_age = gets.chomp.to_i

# working_number_of_years = retirement_age - age

# year_of_retirement = CURRENT_YEAR + working_number_of_years

# puts "It's #{CURRENT_YEAR}. You will retire in #{year_of_retirement}"
# puts "You have only #{working_number_of_years} years of work to go!"


# 5 -------------------------------------------------------------------
# GREETING A USER
# input - string
# output - string
# gets name
# if name includes ! - output all caps
# else hello name

# puts "What is your name?"
# name = gets.chomp

# if name[-1] == "!"
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}"
# end

# 6 -------------------------------------------------------------------
# ODD NUMBERS
# output - integers
# print all odd numbers 1 - 99 inclusize, on seperate lines

# (1..99).each {|num| puts num if num.odd? }

# 1.upto(99){ |num| puts num if num.odd? }

# (1..99).select{|num| puts num if num.odd?}

# 7 -------------------------------------------------------------------
# PRINT EVEN NUMBERS
# (1..99).each {|num| puts num if num.even? }

# value = 1
# while value <= 99
#   puts value if value.even?
#   value += 1
# end

# 8 -------------------------------------------------------------------
# input - integer, string
# output - integer

# get a input number greater than 0 
# check number is gretaer than 0
# input s or p
# if s
# => sum of integers 1 to num
# =>  sum = 1 to num.reduce(:+)
# if p
# => product of integers 1 to num
# =>  product = num.reduce(:*)

# def calc_sum(num)
#   (1..num).reduce(:+)
# end

# def calc_product(num)
#   (1..num).reduce(:*)
# end

# puts ">> Welcome to sum and product calculator"

# num = 0
# input = ''

# loop do
#   puts ">> Please enter an integer greater than 0:"
#   num = gets.chomp.to_i
#   break if num > 0
#   puts ">> Invalid input. Number must be greater than 0."
# end

# loop do
#   puts ">> Enter 's' to compute the sum, 'p' to compute the product."
#   input = gets.chomp.downcase

#   case input
#     when input = 's'
#       puts "The sum is #{calc_sum(num)}."
#       break
#     when input = 'p'
#       puts "The product is #{calc_product(num)}."
#       break
#     else
#       puts "Invalid input. Please enter 's' or 'p'."
#   end
# end

# 9 -------------------------------------------------------------------
# STRING ASSIGNMENT

# name = 'Bob'
# save_name = name # => save_name now points to the name object
# name.upcase! # => name object mutated to upcase
# puts name, save_name# => output will be BOB, BOB

# 10 -------------------------------------------------------------------
# MUTATION
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo) # => array of strings
array2 = [] # => empty array
array1.each { |value| array2 << value } # => each copies the references from array1 to array2, they hold the same objects
array1.each { |value| value.upcase! if value.start_with?('C', 'S') } # => object in array1 mutated destructivity
puts array2