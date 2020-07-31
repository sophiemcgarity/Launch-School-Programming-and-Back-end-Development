# 1 -------------------------------------------
# Find the Class
# puts "Hello".class
# puts 5.class
# puts [1, 2, 3].class

# 2 --------------------------------------------
# Create the Class
# class Cat; end

# 3 ---------------------------------------
# Create the Object
# class Cat
# end

# kitty = Cat.new

# 4 ---------------------------------------
# What are you?
# class Cat
#   def initialize
#     puts "I'm a cat!"
#   end
# end

# kitty = Cat.new

# 5 --------------------------------------
# Hello, Sophie (part 1)
# class Cat
#   def initialize(name)
#     @name = name
#     puts "Hello! My name is #{@name}!"
#   end
# end

# kitty = Cat.new('Sophie')

# 6 -------------------------------------
# Hello, Sophie (part 2)
# class Cat
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello! My name is #{@name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet

# 7 ------------------------------------
# Reader
# class Cat
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

# 8 ------------------------------------
# Writer
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

# kitty = Cat.new('Sophie')
# kitty.greet
# kitty.name = "Luna"
# kitty.greet

# 9 --------------------------------------
# Accessor
# class Cat
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet
# kitty.name = "Luna"
# kitty.greet

# 10 ------------------------------------
# Walk the cat
# module Walkable
#   def walk
#     puts "Let's got for a walk!"
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