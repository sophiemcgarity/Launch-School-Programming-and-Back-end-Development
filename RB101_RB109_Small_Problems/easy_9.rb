require 'pry'
# 1 ---------------------------------------------------------------------------------------------------
# # Welcome Stranger

# def greetings(array, hash)
#   name = array.join(' ')
#   job = "#{hash[:title]} #{hash[:occupation]}"
#   puts "Hello #{name}! Nice to have a #{job} around."
# end

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# 2 -------------------------------------------------------------------------
# Double Doubles

# def double_number?(num)
#   string_of_nums = num.to_s
#   center = string_of_nums.size / 2
#   first_half = center.zero? ? '' : string_of_nums[0..(center - 1)]
#   second_half = string_of_nums[center..-1]
  
#   first_half == second_half ? true : false
# end

# def twice(number)
#   double_number?(number) ? number : number * 2
# end

# p twice(5) #== 10

# 3 ---------------------------------------------------------------------------------
# Always return negative
# def negative(number)
#   number > 0 ? -number : number
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0 

# 4 ------------------------------------------------------------------------------
# Counting up 
# def sequence(num)
#   num < 0 ? (num..1).to_a : (1..num).to_a
# end

# p sequence(-1)
# p sequence(1)

# 5 -------------------------------------------------------------------------------
# Uppercase Check

# def uppercase?(string)
#   string == '' ? false : string == string.upcase
# end

# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == false

# 6 ------------------------------------------------------------------------------------
# How long are you

# def word_lengths(string)
#   words = string.split(' ')
  
#   words.map { |word| "#{word} #{word.length}" }
# end

# p word_lengths("cow sheep chicken")

# 7 ----------------------------------------------------------------------------------
# Name swapping

# def swap_name(string)
#   words = string.split(' ')
#   first_name = words[0]
#   last_name = words[1]
#   "#{last_name}, #{first_name}"
# end

# p swap_name('Joe Roberts') 

# 8 -----------------------------------------------------------------------
# Sequence count
# def sequence(count, multiple)
#   (1..count).map { |num| num * multiple }
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

# 9 -----------------------------------------------------------------
# Grade book
# def get_grade(num1, num2, num3)
#   score = (num1 + num2 + num3) / 3
  
#   case 
#   when score > 100 then 'Extra credit'
#   when (90..100).include?(score) then 'A'
#   when (80..89).include?(score)  then 'B'
#   when (70..79).include?(score)  then 'C'
#   when (60..69).include?(score)  then 'D'
#   else 
#     'F'
#   end
# end

# p get_grade(95, 90, 150)
# p get_grade(50, 50, 95)

# 10 -----------------------------------------------------------------------
# Grocery List

# def buy_fruit(array)
#   fruit_list = []
  
#   array.each do |fruit, count|
#     count.times { fruit_list << fruit }
#   end
  
#   fruit_list
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])