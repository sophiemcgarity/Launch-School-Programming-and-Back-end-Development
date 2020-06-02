# 1 ---------------------------------------------------------------------------------------------------------------
# Welcome Stranger

# def greetings(name, job)
#   name = name.join(' ')
#   job = job[:title] + ' ' + job[:occupation]
#   puts "Hello #{name}! Nice to have a #{job} around."
# end

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })


# 2 ---------------------------------------------------------------------------------------------------------------------
# Double Doubles

# def twice(number)
#   middle_index = (number.to_s.size / 2) - 1
#   right_side = number.to_s[0..middle_index]
#   left_side = number.to_s[(middle_index + 1)..-1]
  
#   return number * 2 if number.to_s.size == 1
#   return number if right_side == left_side
#   return number * 2
  
# end

# p twice(37) == 74
# p twice(44) == 44

# 3 ----------------------------------------------------------------------------------------------------
# Always Return Negative

# def negative(number)
#   number > 0 ? -number : number
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0 

# 4 ------------------------------------------------------------------------------------------------------
# Counting Up

# def sequence(number)
#   number > 0 ? (1..number).to_a : [number]
# end
  
# p sequence(5) #== [1, 2, 3, 4, 5]
# p sequence(3) #== [1, 2, 3]
# p sequence(-1) #== [1]

# 5 -----------------------------------------------------------------------------------------------------------
# Uppercase Check

# def uppercase?(string)
#   string == string.upcase ? true : false
# end

# p uppercase?('t') == false
# p uppercase?('T') == true

# 6 ------------------------------------------------------------------------------------------------------------
# How long are you?

# def word_lengths(string)
#   string.split.map do |word|
#     word + ' ' + word.size.to_s
#   end
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# 7 ------------------------------------------------------------------------------------------------------
# Name Swapping

# def swap_name(string)
#   string.split.reverse.join(', ')
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'


# 8 -----------------------------------------------------------------------------------------------------------
# Sequence Count

# def sequence(count, multiple)
#   sequence_list = []
#   starting_value = 0
#   count.times do
#     sequence_list << starting_value += multiple
#   end
  
#   sequence_list
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]

# 9 ---------------------------------------------------------------------------------------------------------
# Grade book

# def get_grade(score1, score2, score3)
#   average = (score1 + score2 + score3) / 3
#   case
#   when average >= 90
#     'A'
#   when average < 90 && average >= 80
#     'B'
#   when average < 80 && average >= 70
#     'C'
#   when average < 70 && average >= 60
#     'D'
#   else
#     'F'
#   end
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

# 10 ----------------------------------------------------------------------------------------------------------
# Grocery List

# def buy_fruit(list)
#   full_list = []
#   list.each do |item|
#     item[1].times do 
#       full_list << item[0]
#     end
#   end
#   full_list
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])