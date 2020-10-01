def select_method(array)
  counter = 0
  selected = []
  
  while counter < array.size
    selected << array[counter] if yield(array[counter])
    counter += 1
  end
  
  selected
end

array = [1, 2, 3, 4, 5]

p select_method(array) { |num| num.odd? }
p select_method(array) { |num| puts num }
p select_method(array) { |num| num + 1 }