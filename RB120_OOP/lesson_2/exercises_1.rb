# 1 --------- Find the Class ------------
# puts "Hello".class
# puts 5.class
# puts [1, 2, 3].class
# On line 2 a method call to puts is made with the string argument "Hello" passed in. The #class method is invoked on the String object returning the name of the class the object belongs too

# 2 -------- Create the Class ------------
# class Cat
# end
# On lines 8 - 9 the Cat class is defined
# On line 8 the reserved word class is used
# On line 9 the reserved word end is used to finish the definition

# 3 -------- Create the Object ------------
# class Cat
# end

# kitty = Cat.new
# On line 18 a new Cat object is assigned to the local variable kitty through initiating it using the class method ::new

# 4 -------- What are you? -----------------
# class Cat
#   def initialize
#     puts "I'm a cat!"
#   end
# end

# kitty = Cat.new
# On lines 23 - 25 the initialize instance method is define. Each time a new object of the Cat class is initialized a call to this method is made.
# On line 24 the puts method is called with a string argument that will output I'm a cat! each time a new Cat object is initilaized.

# 5 ------ Hello, Sophie! (part 1) ---------
# class Cat
#   def initialize(name)
#     @name = name
#     puts "Hello! My name is #{@name}!"
#   end
# end

# kitty = Cat.new("Sophie")

# Instance variables exist only within an object instance
# On line 34 the instance method initialize is defined with one parameter name
# Name is assigned to the instance variable @name on line 35
# On line 36 string interpolation is use to pass to the puts method to output the message and the value stored in the instance variable @name

# 6 ------ Hello, Sophie! (part 2) ---------
# class Cat  
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello! My name is #{@name}!"
#   end
# end

# kitty = Cat.new("Sophie")
# kitty.greet

# The instance method greet is defined on lines 53 - 55
# Any instance of the cat class has access to this method. This allows kitty.greet to be called on line 54 to output the message.

# 7 ------------- Reader ------------
# class Cat
#   attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new("Sophie")
# kitty.greet

# On line 66 the attr_reader is passed the symbol :name to create a getter method
# Inside the greet method on line 73 a call to the name getter method is made from inside the class retrieving the value of the instance variable @name to be output in the greet message.
# Getter methods can be invoked from inside and outside the class.

# 8 --------- Writer ---------------
# class Cat
#   attr_reader :name
#   attr_writer :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new("Sophie")
# kitty.greet
# kitty.name = "Luna"
# kitty.greet

# On line 87 a setter method is passed the symbol :name as an argument creating the functionality to change the value of the instance varaible name.
# On line 100 the name setter method is invoked and passed the string "Luna" as an argument. This reassigns the value of the instance variable @name resulting in the second call to the greet method using the reassigned @name value of "Luna"

# 9 ------- Accessor ----------
# class Cat
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new("Sophie")
# kitty.greet
# kitty.name = "Luna"
# kitty.greet

# On line 108 both setter and getter methods are created through Ruby shorthand attr_accessor and passed the symbol :name as an argument

# 10 ------- Walk the Cat -------
# module Walkable
#   def walk
#     puts "Let's go for a walk!"
#   end
# end

# class Cat
#   include Walkable
  
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet
# kitty.walk

# The module Walkable is defined on lines 127 - 131
# On line 128 - 130 the method walk is defined
# On line 134 the Walkable module is mixed into the Cat class using the include keyword providing instances of the Cat object access to the methods defined in the Walkable module