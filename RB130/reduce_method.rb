def reduce_method(array, accumulator = array[0])
  current_element = 1

  while current_element < array.size
    accumulator = yield(accumulator, array[current_element])
    current_element += 1
  end
  
  accumulator
end

p reduce_method(['a', 'b', 'c']) { |acc, value| acc += value }  
p reduce_method([[1, 2], ['a', 'b']]) { |acc, value| acc + value }