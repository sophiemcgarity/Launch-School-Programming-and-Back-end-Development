# 1 ----------------------------------
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
# puts teddy.speak           # => "bark!"
# puts teddy.swim           # => "swimming!"

# karl = Bulldog.new
# puts karl.speak           # => "bark!"
# puts karl.swim            # => "can't swim!"

# On lines 12 - 16 the Bulldog class is defined as a subclass of Dog. The bulldog class inherits the methods from the super class so on line 23 the bulldog object has access to the speak method.
# On lines 13 - 15 the swim method inherited from the Dog super class is overidden

# 2 -----------------------------------
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
  
#   def swim
#     'swimming!'
#   end

#   def fetch
#     'fetching!'
#   end
# end

# class Cat < Animal
#   def speak
#     'meow!'
#   end
# end

# On lines 31 - 39 the Animal class is defined and contains two instance methods run and jump
# On lines 41 - 53 the Dog class is defined as a subclass of Animal. The dog class contains the instance methods speak, swim and fetch
# On lines 55 - 59 the Cat class is defined as a subclass of Animal and contains one instance method, speak

# 3 ------------------------
          # Animal
            # run
            # jump
  # Dog                # Cat
    # speak              # speak
    # swim
    # fetch
    
  # Bulldog
    # swim

# 4 ------------------------
# Dog   # Cat
# Animal
# Object
# Kernel
# BasicObject

# The method lookup path is the order in which Ruby looks through classes to find a method that has been called
