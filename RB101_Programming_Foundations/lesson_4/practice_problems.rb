# PRACTICE PROBLEMS: METHODS AND MORE METHODS

# 1. 'hi' returns a truthy value, so select returns a new array with the original array elements
# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

# 2. returns an int value of the elements that match the condition, if a block is given counts the number of elements for which the block returns a true value, count considers the truthiness of the blocks return value

# 3. reject returns a new array containing the items for which are not true, puts evaluates to nil so [1, 2, 3] is returned

# [1, 2, 3].reject do |num|
#   puts num
# end

# 4. each value creates a hash key based on the character at value[0], {} is passed as a method argument, the mthod returns the collection passed in
# def method_4
#   ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#     hash[value[0]] = value
#   end
# end

# puts method_4

# start with the hash object { }
# on first iteration we add "a" => "ant" to the hash, and repeats
# returns a hash with those three elements

# 5. go ot shift(hash) in docs, removies the first key value pair in the hash, changes the original, permantely removes the pair, returns the removed hash as a two item array

# 6. pop removes the last element of an array and returns it, the returned value has size called on it

# 7. any? returns a true or false value from the object and block, returns true if any value in the fiven block returns a value other than false or nil
# def method_7
#   [1, 2, 3].any? do |num|
#     puts num
#     num.odd?
#   end
# end

# p method_7

# last statement in the block determines the return value
# odd? returns a boolean
# block returns true on the first iteration, any? will return true
# then stops iterating as it has returned true

# 8. take returns the first n elements from the array, if a negative number is given, raises an argument error, returns a new_ary so not destructive

# 9. map invokes the given block once for each element of self
#    a new array is created containing the values returned by the block
#    new array return with bear
# def method_9
#   { a: 'ant', b: 'bear' }.map do |key, value|
#     if value.size > 3
#       value
#     end
#   end
# end

# p method_9

# if no conditions in an if statement evaluates as true, the if statement itself return nil, nil is returned as the first element in the returned array

# 10. returns a new array, puts is equal to nil, returns 1 nil nil
# def method_10
#     [1, 2, 3].map do |num|
#       if num > 1
#         puts num
#       else
#         num
#       end
#     end
# end

# p method_10
