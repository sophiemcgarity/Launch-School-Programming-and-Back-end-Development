# transforming a hash

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# # loop through the keys in the hash to have access to their values
# # store the selected keys and values in a new hash
# # use a counter to increment ezch key position
# # using a loop
# # break if the counter is == to the hash keys size
# # current key will be equal to the input hash key counter position
# # current value will equal the input hash 

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys 
#   # .keys - returns a new array populated with the keys from this hash
#   selected_fruits = {}
#   counter = 0
  
#   loop do
#     break if counter == produce_keys.size
    
#     # current_key is the counter position in the newly created array, produced from using .keys on the original hash
#     current_key = produce_keys[counter]
    
#     # accesses the value from the current key posotion
#     current_value = produce_list[current_key]
    
#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end
    
#     counter += 1
#   end
# end


# select_fruit(produce)


# ------------------------------------------------------------------------------

# entire transformation within a definition
# returns a references to the mutated orignal

# def double_numbers!(numbers)
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     numbers[counter] *= 2
    
#     counter += 1
#   end
#   numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]

# p double_numbers!(my_numbers)
# p my_numbers

# ------------------------------------------------------------------------------

# double numbers with odd indices

# def double_odd_numbers(numbers)
#   doubled_numbers =[]
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number
    
#     counter += 1
#   end
  
#   doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)  
# p my_numbers    
# ------------------------------------------------------------------------------
# create a method called multiply that can take additional arguments to determine the transformation criteria

# def multiply(numbers, multiplier)
#   multiplied_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     multiplied_numbers << numbers[counter] * multiplier
    
#     counter += 1
#   end  
  
#   multiplied_numbers
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 3)