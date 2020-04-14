# Practice Problems: Sorting, Nested Collections and Working with Blocks

# Practice Problem 1 -----------------------------------------------------------------------------------------------------------------
# How would you order this array of number strings by descending numeric value?
# arr = ['10', '11', '9', '7', '8']
# --- Problem ---
# inputs: array of strings
# outputs: reordered array of string
# rules: order by descending numeric value
# --- Data Structures / Algorithm ---
# use Array#sort method
# need to convert the string to integers to compare
# => comparisons for the sort will be done using the <=> operator
# => can use sort to sort by decending value by comparing values

# arr = ['10', '11', '9', '7', '8']

# p arr.sort { |a, b| b.to_i <=> a.to_i }

# Practice Problem 2 -----------------------------------------------------------------------------------------------------------------
# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# # --- Problem ---
# # inputs: array of hashes
# # outputs: same array of hashes
# # rules: order the array of hashes based on the published date
# # --- Data Structures / Algorithm ---
# # access the hash key published from within the array
# # for each item in the array compare the published date in accending order
# # => sort_by uses a set of keys

# p books.sort_by { |book| book[:published] }

# Practice Problem 3 -----------------------------------------------------------------------------------------------------------------
# For each of these collection objects demonstrate how you would reference the letter 'g'.

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# p arr1[2][1][3]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# p arr2[1][:third][0]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# p arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# p hsh1['b'][1]

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# p hsh2[:third].key(0)

# Practice Problem 4 -----------------------------------------------------------------------------------------------------------------
# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
# p arr1

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4
# p arr2

# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2][0] = 4
# p hsh1

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4
# p hsh2

# Practice Problem 5 -----------------------------------------------------------------------------------------------------------------
# Given this nested Hash: figure out the total age of just the male members of the family.

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# --- Problem ---
# inputs: hash
# outputs: integer
# rules: add age values of males only
# --- Data Structures / Algorithm ---
# assign a variable for the total_age
# loop over each_value in the munsters hash, in this example each_value of the outer hash is a hash itself
# => add the age value, if the gender value is equal to male

# total_age = 0

# munsters.each_value do |value|
#   total_age += value["age"] if value["gender"] == "male"
# end

# puts total_age

# Practice Problem 6 -----------------------------------------------------------------------------------------------------------------
# print out the name, age and gender of each family member:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# # --- Problem ---
# # inputs: hash
# # outputs: string
# # rules: print out the name, age and gender for each family member
# # --- Data Structures / Algorithm ---
# # access the value of the munters hash
# # => print out each key
# # => access the value for each name key
# # =>    print out the age and gender value

# munsters.each do |key, value|
#   puts "#{key} is a #{value['age']} year old #{value['gender']}"
# end

# Practice Problem 7 -----------------------------------------------------------------------------------------------------------------
# Given this code, what would be the final values of a and b? Try to work this out without running the code.
# a = 2
# b = [5, 8]
# arr = [a, b] # arr = [2, [5, 8]]

# arr[0] += 2 # arr = [4, [5, 8]]
# arr[1][0] -= a # a = 2, arr = [4, [3, 8]]

# Practice Problem 8 -----------------------------------------------------------------------------------------------------------------
# Using the each method, write some code to output all of the vowels from the strings.

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# --- Problem ---
# inputs: hash
# outputs: string
# rules: output all the vowels from the strings contained in the hash
# --- Data Structures / Algorithm ---
# the strings are stored in the hash value
# => can access with each value
# create an empty string to store the vowels
# join the array items to create a single string
# loop over each character in the string
# => select if char is equal to vowel

# hsh.each_value do |word|
#   characters = word.join.chars
#   puts characters.select {|char| char =~ /[aeiouAEIOU]/ }
# end

# Practice Problem 9 -----------------------------------------------------------------------------------------------------------------
# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# --- Problem ---
# inputs: arrays
# outputs: arrays
# rules: return a new array with the same structure, but the sub arrays ordered in decending order
# --- Data Structures / Algorithm ---
# create a new array to store the sorted arrays
# use each to access each array
# sort each array in decending order ary.sort{|a, b| b <=> a}
# add sorted array to new array
# => sorted_array <<

# sorted_array = []

# arr.map do |inner_arr|
#   sorted_array << inner_arr.sort {|a, b| b <=> a}
# end

# p sorted_array

# Practice Problem 10 -----------------------------------------------------------------------------------------------------------------
# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.
# --- Problem ---
# inputs: array
# outputs: new arry
# rules: increment each hash value in the array by one without modifying the original array
# --- Data Structures / Algorithm ---
# use map on the array to get access to the hash 
# create an incremented_hash to store the new values
# use each to iterate over each hash value and save to new incremented hash value
# => value + 1

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
#   incremented_hash = {}
#   hash.each do |key, value|
#     incremented_hash[key] = hash[key] + 1
#   end
#   p incremented_hash
# end

# Practice Problem 11 -----------------------------------------------------------------------------------------------------------------
# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.
# --- Problem ---
# inputs: nested array
# outputs: array of same structure
# rules: return a new array with the same structure as the original but with only multiples of three

# --- Data Structures / Algorithm ---
# loop over the original array
# => return the nested array to the multiples array 
# =>    select the integer if num % 3 == 0
# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr.map do |arr|
#   arr.select {|num| num if num % 3 == 0}
# end


# Practice Problem 12 -----------------------------------------------------------------------------------------------------------------
# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# return {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# --- Problem ---
# inputs: array and sub arrays
# outputs: hash
# rules: the first item in the array is the key, the second item is the value. Cannot use Array#to_h
# --- Data Structures / Algorithm ---
# new_hash = {}
# map over the array
# assign the element at index [0] to the key
# => new_hash[key] = el

# new_hash = {}
# arr.map do |el|
#   new_hash[el[0]] = el[1]
# end
# p new_hash.merge


# Practice Problem 13 -----------------------------------------------------------------------------------------------------------------
# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
# The sorted array should look like this:
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# --- Problem ---
# inputs: array of sub arrays
# outputs: new array of the same structure
# rules: return a new array of the same structure as the original but ordered logically based on the odd numbers
# --- Data Structures / Algorithm ---
# use sort_by method on the original array
# sub arrays are compared element by element when being sorting so we can just select the odd values to sort
# perform selection on the sub array to select the odd values
# =>  num.odd?

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# arr.sort_by do |inner_arr|
#   inner_arr.select {|num| num.odd?}
# end



# Practice Problem 14 -----------------------------------------------------------------------------------------------------------------
# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.
# The return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# --- Problem ---
# inputs: hash
# outputs: array
# rules: return an array containing the colors of the fruits capitalized, and the sizes of the vegetables in uppercase
# --- Data Structures / Algorithm ---
# capilatize method for fruits
# upcase method for vegetables
# loop over each_value
# if key[:type] == 'fruit'
# => result = key[:colors]
# need to capitalize each array item
#   => 
# elsid key [:type] == 'vegetable'
# => result key[:size].upcase

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }
# result = []
# hsh.map do |key, value|
#   if value[:type] == 'fruit'
#     result << value[:colors].map {|item| item.capitalize}
#   elsif value[:type] == 'vegetable'
#     result << value[:size].upcase
#   end
# end
# p result


# Practice Problem 15 -----------------------------------------------------------------------------------------------------------------
# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

# --- Problem ---
# inputs: array
# outputs: array
# rules: return an array which only contains the hashes where all the integers are even
# --- Data Structures / Algorithm ---
# use select to iterate over the array, returns all elements that return true
# want hashes where all the intergers are even
# => hash.all?
# the integers are nested in an array, so need to call all on the hash value
# => hash_value.all?
# to find even numbers call even? on each integer
# => num.even?

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# new_array = []
# new_array = arr.select do |hash|
#               hash.all? do |_, value|
#                 value.all? do |num|
#                   num.even?
#                 end
#               end
#             end
# p new_array 

# Practice Problem 16 -----------------------------------------------------------------------------------------------------------------
# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
#                          8   - 4  - 4  -  4 -     12
# Write a method that returns one UUID when called with no parameters.

# --- Problem ---
# inputs:
# outputs: string
# rules: create a random 32 character hexadecimal string broken into parts of 8-4-4-4-12
# --- Data Structures / Algorithm ---
# declare an array to hold the characters
# iterate over the range of 0-9, and a-f converting each into a string to store in the chracters array
# create an output sting variable
# make an array of itegers to store the number of characters in each section
# call each_with_index on the sections array
# => calls a block with the item and its index, for each item
# item.times method for each iteger adding a random character to the uuid variable
# =>  .sample
# append a '-' to the uuid unless the index is greater than or = to the section size - 1
# return the uuid string

# def uuid_method
#   characters = []
#   (0..9).each {|char| characters << char.to_s }
#   ('a'..'f').each {|char| characters << char }
  
#   uuid = ''
#   sections = [8, 4, 4, 4, 12]
#   sections.each_with_index do |section, index| # section = 8, index = 0
#     section.times {uuid += characters.sample}  # 8.times add character sample to uuid
#     uuid += '-' unless index > section
#   end
  
#   uuid.chop
# end

# p uuid_method
