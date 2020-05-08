require 'pry'

# 1 --------------------------------------------------------------------------------
# Rotation (part 1)
# def rotate_array(array)
#   first_el = array[0]
#   new_arr = []
  
#   array.map do |num|
#     next if num == first_el
#     new_arr << num
#   end
  
#   new_arr << first_el
# end

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# x = [1, 2, 3, 4]
# # p rotate_array(x) #== [2, 3, 4, 1]

# def rotate_string(string)
#   rotate_array(string.chars).join
# end

# p rotate_string("Hello")

# def rotate_integer(number)
#   rotate_array(number.to_s.chars).join.to_i
# end

# p rotate_integer(12345)

# 2 -----------------------------------------------------------------------------------------
# Rotation (part 2)

#
#
#
#



# 3 ---------------------------------------------------------------------------------
# Rotation (part 3)

#
#
#
#

# 4 --------------------------------------------------------------------------------------------------------
# 1000 lights

# number of light switches - 1 through n
# each witch is initialally OFF
# On first pass - TURN ALL ON
# On second pass - ALL EVEN ON
# Third pas - ALL ODD ON
# repeated through n repetitions

# method takes one argument, TOTAL NUMBER OF SWITCHES
# returns an array identifing which lghts are on after n repetitions