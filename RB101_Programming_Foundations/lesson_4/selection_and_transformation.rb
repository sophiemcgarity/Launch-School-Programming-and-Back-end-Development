# transforming a hash
#
# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}
  
#   loop do
#     break if counter == produce_keys.size
    
#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]
    
#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end
    
#     counter += 1
#   end
#   selected_fruits
# end

# p select_fruit(produce)

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
# create a method called multiple that can take additional arguments to determine the transformation criteria

def multiple
end