# PRACTICE PROBLEMS: METHODS AND MORE METHODS
# 1 ---------------------------------------------------------------------
# What is the return value of the select method below? Why?
# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

# The return value will be [1, 2, 3]. 'hi' a string is a truthy value, as the last statement in the block it will evaluate each element in the array as true. 
# Considers the truthiness of the return

# 2 -----------------------------------------------------------------------
# How does count treat the block's return value? How can we find out?
# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end

# Counts the number of elements for which the block returns a true value, returning an integer, as stated in the documentation. In this case the return value is 2
# Considers the truthiness of the return

# 3 ------------------------------------------------------------------------
# What is the return value of reject in the following code? Why?
# [1, 2, 3].reject do |num|
#   puts num
# end

# reject returns a new array contianing items in the block which are not true
# puts returns nil, so the return will be [1, 2, 3] as reject returns items that evaluate as falsey

# 4 -----------------------------------------------------------------------
# What is the return value of each_with_object in the following code? Why?
# ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end

# each_with_object iterates each element in the given block with an arbitrary object given, and returns the initially given object
# passing in {} to the block returns an updated value after each iteration
# once each_with_object has iterated over the calling collection, it returns the initially given object, whch now contains all the updates
# hash key is set to index 0 of the element
# the return will be {a: ant, b:bear, c:cat}

# 5 ----------------------------------------------------------------------
# What does shift do in the following code? How can we find out?
# hash = { a: 'ant', b: 'bear' }
# hash.shift

# the documentation states: shift removes a key-value pair from hsh and returns it as the two-item array or the hash's default if the hash is empty
# destructively removes the first-key-value pair
# the return value will be [a, 'ant']

# 6 ---------------------------------------------------------------------
# What is the return value of the following statement? Why?
# ['ant', 'bear', 'caterpillar'].pop.size

# pop removes the last element of the array and returns it, size will then be called on pops return value which is 11

# 7 ----------------------------------------------------------------------
# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?
# [1, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end

# the return value is the last evaluation in the block which is num.odd?
# any? passes each element of the collection to the given block. The method returns true if the block ever returns a value other than false or nil
# num.odd? if the last statement to be evaluated. 1, and 3 return true so the return value of any? is true 
# as any? returns true on the first iteration, it stops therefore puts num is only invoked once

# 8 -----------------------------------------------------------------------
# How does take work? Is it destructive? How can we find out?
# arr = [1, 2, 3, 4, 5]
# arr.take(2)

# take returns the first (n) elements from the array. THe documentation signature states a return of new_ary so we know it is non-destructive

# 9 -----------------------------------------------------------------------
# What is the return value of map in the following code? Why?
# { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end

# return valus is => [nil, "bear"]
# map returns a new array with the results of running block once for each element in enum.
# in this case if the value size is greater than 3 the value is evaluated as true, if less than 3 evaluated as false
# the first element 'ant' is evaluted as fasle, value isn't returned
# the second element 'bear' is evaluted as true, value is returned
# when none of the conditions in the if statement evaluate as true, the if statement itself returns nil

# 10 ---------------------------------------------------------------------
# What is the return value of the following code? Why?
# [1, 2, 3].map do |num|
#   if num > 1
#     puts num
#   else
#     num
#   end
# end

# puts evalutes to nil, so if the element is greater than 1 nil is returned
# return value => [1, nil, nil]

# Summary

# Key points to consider when using a method. Research these in the documentation.

# How does the method treat the block's return value?
# What is the return value of the method?
# How can you use the Ruby docs to learn more about a method?
# Is the method destructive?
