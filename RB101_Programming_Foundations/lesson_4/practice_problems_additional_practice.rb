# 1 ------------------------------------------------------------------------------------------------------------------------------------
# Given the array below
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

# hash = Hash.new
# flintstones.each_with_index { |name, index|
#   hash[name] = index
# }

# flintstones_hash = {}
# flintstones.each_with_index { |name, index|
#   flintstones_hash[name] = index
# }

# p flintstones_hash

# 2 -------------------------------------------------------------------------------------------------------------------------------------
# Add up all of the ages from the Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# total = 0
# ages.each_value do |value|
#   total += value
# end

# p total

#p ages.values.inject(:+) # => apply the + operator to the accumulator and object parameters of inject
#p ages.values.reduce(:+)

# 3 -------------------------------------------------------------------------------------------------------------------------------------
# In the age hash remove people with age 100 and greater.

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.delete_if {|key, value| value >= 100 }
# ages.select!{|key, value| value if value < 100} # => equivalent to keep_if but returns nil if no changes were made
# ages.keep_if {|key, value| value < 100 } # => if no block given, an enumerator is returned instead

# p ages

# 4 -------------------------------------------------------------------------------------------------------------------------------------
# Pick out the minimum age from our current Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# current_age = ages.values[0]
# ages.select do |key, value| 
#   current_age = value if value < current_age
# end
# p current_age

# p ages.values.min


# 5 -------------------------------------------------------------------------------------------------------------------------------------
# In the array: Find the index of the first name that starts with "Be"

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# input - string
# output - index

# select the first 2 characters of each string with "be", return index if chracters == "be"

# flintstones.each_with_index {|word, index| p index if word[0,2] == "Be" }
# p flintstones.index { |name| name[0,2] == 'Be' }

# 6 -------------------------------------------------------------------------------------------------------------------------------------
# Amend this array so that the names are all shortened to just the first three characters:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# names = []
# flintstones.each do |name| 
#   names << name.chars.take(3).join
# end
# p names

# p flintstones.map! {|name| name[0,3] }

# 7 -------------------------------------------------------------------------------------------------------------------------------------

# Create a hash that expresses the frequency with which each letter occurs in this string:

# statement = "The Flintstones Rock"

# input - string
# output - hash

# create a hash key for each unique character in the string
# for each string character +1 to the hash value that matches the character key

# frequency_hash = {}
# character_list = statement.chars

# character_list.uniq.map {|character| frequency_hash[character] }

# frequency_hash

# 8 -------------------------------------------------------------------------------------------------------------------------------------
# What happens when we modify an array while we are iterating over it? What would be output by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# numbers = [1, 2, 3, 4]
# numbers.each_with_index do |number, index|
#   p "#{index}  #{numbers.inspect}  #{number}"
#   numbers.shift(1)
# end

# changes the array with each iteration so the input changes
# shift removes the first element so 1 is no longer in the numbers array after the first iteration
# array is shortened on each iteration, each compares against the current length of the array rather than the original
# the removal of the first item, 1, changes the value in the second pass
# 1, 3 - would be output

# further exploration------------------
# numbers = [1, 2, 3, 4]

# index = 0
# while index <  numbers.size
#   puts numbers[index]
#   numbers.shift(1)
#   index += 1
# end

# first iteration 
# => puts 1
# => numbers.shift removes element [2] , as it is at index 1
# numbers = [3, 4]
# index = 1

# second iteration
# => puts 3
# numbers.shift removes [4], as it is at index 1 of the remaining array being iterated ovre
# index = 2
# -------------------------------------
# What would be output by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# pop removes the last element 
# 1, pop removes 4, 2, pop removes 3
# ouput 1, 2

# iterators work on the original array in real time

# 9 -------------------------------------------------------------------------------------------------------------------------------------
# As we have seen previously we can use some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:

# words = "the flintstones rock"
# would be:
# words = "The Flintstones Rock"
# Write your own version of the rails titleize implementation.

# words = "the flintstones rock"

# input - string
# output - string

# split string into array of each word
# convert to chars
# upcase char[0]

# title = []
# word_array = words.split

# word_array.map do |word|
#   title << word.gsub(word[0], word[0].upcase)
# end

# p title.join(' ')

# p words.split.map { |word| word.capitalize}.join(' ')


# 10 -------------------------------------------------------------------------------------------------------------------------------------
# Given the munsters hash below

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

# input - hash
# output - hash

# map a new key of "age_group"
# case when age return value "kid"
# =>   when age >= 18 || age <= 64 return value "adult"
# =>   when age >= 65 return value "senior"

# munsters.map do |name, info|
#   case info["age"]
#     when 0...18
#       info["age_group"] = "kid" 
#     when 18...65
#       info["age_group"] = "adult"
#     else 
#       info["age_group"] = "senior"
#   end
# end

# p munsters

