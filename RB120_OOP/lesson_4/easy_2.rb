# Question 1 //////////////////////////////////////////////////
# class Oracle
#   def predict_the_future
#     "You will " + choices.sample
#   end
  
#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end

# oracle = Oracle.new
# p oracle.predict_the_future

# will produce "You will " + random ending from the array within the choices method

# Question 2 //////////////////////////////////////////////////
# class Oracle
#   def predict_the_future
#     "You will " + choices.sample
#   end
  
#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end

# class RoadTrip < Oracle
#   def choices
#     ["visit Vegas", "fly to Fiji", "romp in Rome"]
#   end
# end

# trip = RoadTrip.new
# p trip.predict_the_future

# will produce a random sentence from the choices method in RoadTrip. Each time Ruby tries to resolve a method name it will start looking it will start with methods defined in the location that the method is called on. So Ruby first looks for a definition of choices in the RoadTrip class

# Question 3 //////////////////////////////////////////////////
# module Taste
#   def flavor(flavor)
#     puts "#{flavor}"
#   end
# end

# class Orange
#   include Taste
# end

# class HotSauce
#   include Taste
# end

# can call .ancestors method on an object to see the look up chain

# Question 4 //////////////////////////////////////////////////
# class BeesWax
#   attr_accessor :type
  
#   def initialize(type)
#     @type = type
#   end
  
#   def describe_type
#     puts "I am a #{type} type of Bees Wax"
#   end
# end

# Question 5 //////////////////////////////////////////////////
# excited_dog = "excited dog"   # local variable
# @excited_dog = "excited dog"  # instance variable
# @@excited_dog = "excited dog" # class variable

# instance variables are denoted with one @ and class varaibles with two @@

# Question 6 //////////////////////////////////////////////////
# class Television
#   def self.manufacturer
#   end
  
#   def model
#   end
# end

# self.manufacturer is a class method, as self is prepended to the method name
# class methods are called using the name of the class and the method name Television.manufacturer

# Question 7 //////////////////////////////////////////////////
# class Cat
#   @@cats_count = 0
  
#   def initialize(type)
#     @type = type
#     @age  = 0
#     @@cats_count += 1
#     puts @@cats_count
#   end
  
#   def self.cats_count
#     @@cats_count
#   end
# end

# p Cat.new('grey')

# p Cat.new('tabby')

# @@cats_count is a class variable so the state is shared across all instances of this class
# to test this you could instatiate 2 different cat objects and call Cat.cats_count

# Question 8 //////////////////////////////////////////////////
# class Game
#   def play
#     "Start the game!"
#   end
# end

# class Bingo < Game
#   def rules_of_play
#   end
# end

# Question 9 //////////////////////////////////////////////////
# class Game
#   def play
#     "Start the game!"
#   end
# end

# class Bingo < Game
#   def rules_of_play
#   end
# end

# if a play method was added to the Bingo class it would stop looking up the look up chain and use the method defined in the Bingo class, ignoring the one inherited from the Game class

# Question 10 //////////////////////////////////////////////////
# Benefits of OOP
# organising code to allow for developers to think at a higher level of abstraction
# think about the relationship between the "noun" used in a program and how they interact rather that the logic itself
# allows parts of code to be reused easily, avoiding repetition

