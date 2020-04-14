# QUESTION 2 ---------------------------------------------------------------------
# input - array
# output - array

# array of strings representing intergers
# if the string.to_i is odd => add to new array
# new array = all odd numbers from the original array

# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']

# 1. first iteration
# odd_numbers << '2' if 0.to_i.odd?
# odd_numbers = ['2']

# 2. first iteration

# for '2' in ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# => if '2'.to_i.odd?
# =>  if statement does not execute

# 2. second iteration
# for '3' in numbers
# => if '3'.to_i.odd?
# => odd_numbers.push('3')
# => end

# odd_number = ['3']

# 3. first iteration

# loop do
#   number = '2'.to_i
#   odd_numbers << '2' unless number.even? # compares string as integer value, producing an error
#   counter += 1
#   break if counter == numbers.size
# end

# 4. first iteration

# numbers.each do |'2'|
#   odd_numbers << '2' if '2'.to_i.odd?
# end
# odd_numbers = []

# QUESTION 3 ---------------------------------------------------------------------
# input - array
# output - integers

# given an array of integers
# output all integers from 1 - number
# e.g. 5 => 1, 2, 3, 4, 5

# numbers = [7, 3, 5, 2, 1, 8, 4]

# 1. first iteration

# counter = numbers.size => 7

# loop do
#   number = numbers[-counter] => 7
#   for num in 1..7
#     puts num
#   end
# break if counter == 1
# counter -=1 => 6

# 2. first iteration

# numbers = [7, 3, 5, 2, 1, 8, 4]
# counter = 0 

# loop do
#   number = numbers[counter] # => number = 7
#   counter = 0 #=> counter = 1 through 7 from each iteration
  
#   loop do
#     counter += 1            # => counter = 1
#     puts counter            # => puts 1
#                             # => counter = 2
#                             # => puts 2
#                             # .....
#                             # counter = 7
#                             # puts 7
#     break if counter >= number # => 7 >= 7 - loop breaks
#   end
  
#   counter += 1              # counter = 8
#   break if counter >= numbers.size # loop break as 8 >= numbers.size => 7
# end

# 3.
# numbers = [7, 3, 5, 2, 1, 8, 4]

# for number in numbers # for 7 in numbers, for 3 in numbers, etc
#   counter = 0
  
#   loop do
#     counter += 1 # counter => 1
#     puts counter # puts 1
    
#     break if counter >= number
#   end
# end  

# 4. 
# numbers = [7, 3, 5, 2, 1, 8, 4]

# numbers.each do |number| # => number = 7, number = 3, etc
#   counter = 0
#   number.times do  # => 7.times
#     counter += 1    # => counter = 1, counter = 2
#     puts counter    # => puts 1,      puts 2
#   end
# end

# QUESTION 4  ---------------------------------------------------------------------

# def snake(str)
#   words = str.split
#   current_word = 0
  
#   loop do
#     words[current_word].downcase!
#     current_word += 1
#     break if current_word >= words.size
#   end  
  
#   words.join('_')
# end

# sentence = 'The sky was blue'
# p snake(sentence)
        
# QUESTION 5 ----------------------------------------------------------------------
# def camel(str)
#   words = str.split(' ')
#   counter = 0
  
#   while counter < words.size
#     words[counter] = words[counter].capitalize

#     counter = counter + 1
#   end
  
#   words.join
# end  
# sentence = 'The sky was blue'
# p camel(sentence)

# QUESTION 6 --------------------------------------------------------------------
# def upper_snake(str)
#   words = str.split
#   current_word = 0
  
#   loop do
#     break if current_word == words.size
#     words[current_word].upcase!
    
#     current_word += 1
#   end
  
#   words.join('_')
# end

# sentence = 'The sky was blue'
# p upper_snake(sentence)

# QUESTION 11 ---------------------------------------------------------------------
# def star_method(stars)
#   arr = []
#   counter = 0
  
#   until counter == stars.size do
#     arr << stars[counter][0, 3]
    
#     counter += 1
#   end
#   arr
# end

# stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
# stars_2 = star_method(stars_1)
# p stars_1
# p stars_2
# p stars_1


# QUESTION 18 ------------------------------------------------------------------
# input - array
# output - array

# given an array of numbers, create two new arrays; odd_numbers and even_numbers

# numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]

# p odd_numbers = numbers.select {|num| num.odd?}
# p even_numbers = numbers.select {|num| num.even?}

# odd_numbers = []
# even_numbers = []

# for number in numbers
#   next if number.odd?
#   even_numbers << number
# end

# for number in numbers
#   next unless number.odd?
#   odd_numbers << number
# end

# QUESTION 19 ----------------------------------------------------------------
# input - hash
# output - hash

# given the hash, return the key value pairs where the country begins with 'B'
# countries_and_capitals = {
#   'France' => 'Paris',
#   'Belgium' => 'Brussels',
#   'Morocco' => 'Rabat',
#   'Barbados' => 'Bridgetown',
#   'Peru' => 'Lima',
#   'Bolivia' => 'La Paz',
#   'Brazil' => 'Brasilia'
# }

# countries_and_capitals.each_with_object({}) do |(k, v), obj|
#   obj[k] = v if k.chr == 'B'
# end

# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []
# counter = 0

# loop do
#   number = numbers[counter].to_i

#   odd_numbers << numbers[counter] unless number.even?

#   counter += 1
#   break if counter == numbers.size
# end

# p odd_numbers