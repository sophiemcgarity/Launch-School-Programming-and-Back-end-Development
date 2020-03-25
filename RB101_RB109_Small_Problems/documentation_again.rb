# def my_method(a, b = 2, c = 3, d)  #sets default arguments
#   p [a, b, c, d]
# end

# my_method(4, 5, 6) # 3 arguments supplied, ruby fills in arguments left ro right replacing default values
# # output will be 4, 5, 3, 6
# # 4 is assigned to a, 6 is assigned to d, leaving the arguments with default values. 5 has not been assigned yet so is assigned to b, leaving c as the default
#-------------------------------------------------------------------------------------
# Mandatory blocks
# a = [1, 4, 8, 11, 15, 19]
# p a.bsearch {|x| x > 8 }
#-------------------------------------------------------------------------------------
# multiple signatures
# a = %w(a b c d e)
# puts a.fetch(7) # IndexError fetch(index) -> obj
# puts a.fetch(7, 'beats me') # 'beats me' fetch(index,default) -> obj
# puts a.fetch(7) { |index| index**2 } # 49 {|index| block} -> obj

#fetch tries to return the element at position index, throws an IndexError exception if the referenced index lies outside the array bounds, error prevented by supplying a second argument which acts as the default value
#-------------------------------------------------------------------------------------
# Keyword argument
# 5.step(to: 10, by: 3) { |value| puts value }
#-------------------------------------------------------------------------------------
# Parent Methods
# s = 'abc'
# puts s.public_methods(false).inspect
#-------------------------------------------------------------------------------------
# Included modules
# a = [5, 9, 3, 11]
# puts a.min(2)
#-------------------------------------------------------------------------------------
# Down the rabbit hole
