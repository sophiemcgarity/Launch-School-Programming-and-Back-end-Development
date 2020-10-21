# 1 - From-To-Step Sequence Generator
# def step(start, ending, step)
#   while start <= ending
#     yield(start)
#     start += step
#   end
  
#   start
# end

# p step(1, 10, 3) { |value| puts "value = #{value}" }

# 2 - Zipper
# def zip(arr1, arr2)
#   output = []
#   arr1.each_with_index do |item, index|
#     output << [item, arr2[index]]
#   end
#   output
# end

# p zip([1, 2, 3], [4, 5, 6])

# 3 - map
# def map(arr)
#   arr.each.with_object([]) do |el, result|
#     result << yield(el)
#   end
# end

# p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
# p map([]) { |value| true } == []

# 4 - count
# def count(*arguments)
#   counter = 0
#   arguments.each { |el| counter += 1 if yield(el) }
#   counter
# end

# p count(1, 3, 6) { |value| value.even? } == 1
# p count(1, 3, 6) { |value| value > 6 } == 0

# 5 - drop_while
# def drop_while(arr)
#   result = []
#   seen_false = false
  
#   arr.each do |el|
#     seen_false = true if yield(el) == false
#     result << el if seen_false == true
#   end
  
#   result
# end

# p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
# p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]

# 6 - each_with_index
# def each_with_index(arr)
#   idx = 0
#   arr.each do |el|
#     yield(el, idx)
#     idx += 1
#   end
# end

# result = each_with_index([1, 3, 6]) do |value, index|
#   puts "#{index} -> #{value**index}"
# end

# puts result == [1, 3, 6]

# 7 - each_with_object
# def each_with_object(arr, object)
#   arr.each { |el| yield(el, object) }
#   object
# end

# result = each_with_object([], {}) do |value, hash|
#   hash[value] = value * 2
# end
# p result == {}

# 8 - max_by

# 9 - each_cons (part 1)
# def each_cons(arr)
#   arr.each_with_index do |item, index|
#     break if index + 1 >= arr.size
#     yield(item, arr[index + 1])
#   end
#   nil
# end

# hash = {}
# result = each_cons(['a', 'b']) do |value1, value2|
#   hash[value1] = value2
# end
# p hash #== {'a' => 'b'}
# p result #== nil

# 10 - each_cons (part 2)
