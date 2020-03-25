# each ---------------------------------------------------------------------
# def a_method
#   [1, 2, 3].each do |num|
#     puts num * 2
#   end
  
#   puts 'hi'
# end

# p a_method

# select ---------------------------------------------------------------------
# def b_method
#   [1, 2, 3].select do |num|
#     num + 1
#   end
# end

# p b_method

# map ---------------------------------------------------------------------
# def c_method
#   [1, 2, 3].map do |num|
#     'hi'
#   end
# end

# p c_method


# MORE METHODS -------------------------------------------------------------

[1, 2, 3].any? do |num|
  num > 2
end