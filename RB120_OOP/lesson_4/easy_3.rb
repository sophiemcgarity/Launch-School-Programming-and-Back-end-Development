# Question 1 //////////////////////////////////////////////////
# class Greeting
#   def greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# case 1
# hello = Hello.new
# hello.hi # => "Hello"

# case 2
# hello = Hello.new
# hello.bye # => undefined method error

# case 3
# hello = Hello.new
# hello.greet # => wrong number of arguments error

# case 4
# hello = Hello.new
# hello.greet("Goodbye") # => "Goodbye"

# case 5
# Hello.hi # => undefined method, as the hi method is defined for instances of the Hello class, rather than the class itself

# Question 2 //////////////////////////////////////////////////
# class Greeting
#   def greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def self.hi
#     greeting = Greeting.new
#     greeting.greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# Hello.hi

# Question 3 //////////////////////////////////////////////////
# class AngryCat
#   def initialize(age, name)
#     @age = age
#     @name = name
#   end
  
#   def age
#     puts @age
#   end
  
#   def name
#     puts @name
#   end
  
#   def hiss
#     puts "Hissss!!"
#   end
# end

# tom = AngryCat.new(2, "Tom")
# jerry = AngryCat.new(3, "Jerry")

# Question 4 //////////////////////////////////////////////////
# class Cat
#   attr_reader :type

#   def initialize(type)
#     @type = type
#   end
  
#   def to_s
#     "I am a #{type} cat."
#   end
# end

# tabby = Cat.new("tabby")
# puts tabby

# Question 5 //////////////////////////////////////////////////
# class Television
#   def self.manufacturer
#   end
  
#   def model
#   end
# end

# tv = Television.new
# tv.manufacturer # => undefined method error
# tv.model # => displays the tv model

# Television.manufacturer # => displays manufacturer
# Television.model # no method error

# Question 6 //////////////////////////////////////////////////
# class Cat
#   attr_accessor :type, :age
  
#   def initialize(type)
#     @type = type
#     @age = 0
#   end
  
#   def make_one_year_older
#     @age += 1
#   end
# end

# Question 7 //////////////////////////////////////////////////
# class Light
#   attr_accessor :brightness, :color
  
#   def initialize(brightness, color)
#     @brightness = brightness
#     @color = color
#   end
  
#   def self.information
#     "I want to turn on the light with a brightness level of super high and a color of green"
#   end
# end

