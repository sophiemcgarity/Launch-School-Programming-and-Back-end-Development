# Practice Problems: Easy 1

# Question 1 ////////////////////////////////////////////////////
# true - object
# "hello" - object
# [1, 2, 3, "happy days"] - object
# 142 - object
# can call the method class on the object to find out what calss they belong too

# Question 2 ////////////////////////////////////////////////////
# module Speed
#   def go_fast
#     puts "I am a #{self.class} and going super fast!"
#   end
# end

# class Car
#   include Speed
#   def go_slow
#     puts "I am safe and driving slow."
#   end
# end

# class Truck
#   include Speed
#   def go_very_slow
#     puts "I am a heavy truck and like going very slow"
#   end
# end

# truck = Truck.new
# truck.go_fast

# car = Car.new
# car.go_fast

# Question 3 ////////////////////////////////////////////////////
# to print out the name of the vehicle in the above code self.class is used to get the class name an prints it in the string using string interpolation. self is a call the class calling the go_fast method, and class is a method call to get the name of the class

# Question 4 ///////////////////////////////////////////////////
# class AngryCat
#   def hiss
#     puts "Hisssss!!!"
#   end
# end

# gerald = AngryCat.new

# Question 5 //////////////////////////////////////////////////
# class Fruit
#   def initialize(name)
#     name = name
#   end
# end

# class Pizza
#   def initialize(name)
#     @name = name
#   end
# end

# the Pizza class has an instance variable as demoted by the '@' sign

# hot_pizza = Pizza.new("cheese")
# orange    = Fruit.new("apple")

# p hot_pizza.instance_variables
# p orange.instance_variables

# can call the instance_variables method on an instance of the class to see what instance variables it holds

# Question 6 //////////////////////////////////////////////////
# class Cube
#   attr_reader :volume
#   def initialize(volume)
#     @volume = volume
#   end
# end

# cube = Cube.new(5)
# p cube.volume

# Question 7 //////////////////////////////////////////////////
# Default value of to_s is to return the name of the object's class and an encoding of the object id
# can output the object to check the information

# Question 8 //////////////////////////////////////////////////
# class Cat
#   attr_accessor :type, :age
  
#   def initialize(type)
#     @type = type
#     @age = 0
#   end

#   def make_one_year_older
#     self.age += 1
#   end
# end

# in the make_one_year_older method self refers to an instance of the object that calle the method 

# Question 9 //////////////////////////////////////////////////
# class Cat
#   @@cats_count = 0
  
#   def initialize(type)
#     @type = type
#     @age  = 0
#     @@cats_count += 1
#   end
  
#   def self.cats_count
#     @@cats_count
#   end
# end

# self used on the cats_count method refers to the Cat class as it is a class method

# Question 10 //////////////////////////////////////////////////
# class Bag
#   def initialize(color, material)
#     @color = color
#     @material = material
#   end
# end

# red_bag = Bag.new('red', 'silk')
# p red_bag