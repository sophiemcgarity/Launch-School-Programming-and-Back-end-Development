# 1 //////////////////////////////////////////////////////////////////////
# class Dog
#   def speak
#     'bark!'
#   end
  
#   def swim
#     'swimming!'
#   end
# end

# class Bulldog < Dog
#   def swim
#     "can't swim!"
#   end
# end

# teddy = Dog.new
# puts teddy.speak
# puts teddy.swim

# george = Bulldog.new
# puts george.speak
# puts george.swim

# 2 //////////////////////////////////////////////////////////////////////////
# class Animal
#   def run
#     'running!'
#   end
  
#   def jump
#     'jumping!'
#   end
# end

# class Dog < Animal
#   def speak
#     'bark!'
#   end
  
#   def fetch
#     'fetching!'
#   end
  
#   def swim
#     'swimming!'
#   end
# end

# class Cat < Animal
#   def speak
#     'meow!'
#   end
# end

# kitty = Cat.new
# puts kitty.jump

# 3 ///////////////////////////////////////////////////////////////////////////
# Animal
  # run
  # jump
# Dog      # Cat
  # speak    # speak
  # fetch
  # swim 
  
# 4 ////////////////////////////////////////////////////////////////////////////
# What is the method lookup path and how is it important?
# The order in which called methods are searched for, if found in the first class it will not continue to search for the method in class higher up the heirarchy