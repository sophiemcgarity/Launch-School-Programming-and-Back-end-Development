# 1 ----- Banner Class -----
# class Banner
#   def initialize(message)
#     @message = message
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#     "+#{'-' * line_length}+"
#   end

#   def empty_line
#     "|#{' ' * line_length}|"
#   end

#   def line_length
#     (@message.size + 2)
#   end

#   def message_line
#     "| #{@message} |"
#   end
# end

# banner = Banner.new('To boldly go where no one has gone before.')
# puts banner

# banner = Banner.new('')
# puts banner

# On line 30 a new Banner object is initialized with one argument passed in, and assigned to the local variable banner
# On lines 3 - 5 the constructor method is defined and assigns the passed in value on line 30 to the @message instance variable
# The instance method on lines 7 - 9 is a custom implementation of the to_s method. When the object is passed as an argument to puts this to_s method is called. The implementation uses called to private instance methods inside the Banner class to create the desired output.
# On line 11 a call to the privat method is made so all instance methods defined below this call are only accessible inside the class itself.
# The instance method line_length defined on line 21 - 23 calculates the length of the output line. This instance method is used in horizontal_rule and empty_line

# Further exploration
# class Banner
#   attr_reader :message
#   attr_accessor :custom_size

#   def initialize(message, custom_size = message.size)
#     @message = message
#     @custom_size = custom_size + 2
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#     calc_message_line_size
#     "+#{'-' * custom_size}+"
#   end

#   def empty_line
#     calc_message_line_size
#     "|#{' ' * custom_size}|"
#   end

#   def calc_message_line_size
#     if @custom_size > 60
#       self.custom_size = 60
#     elsif @custom_size < message.size
#       self.custom_size = message.size + 2
#     end
#   end

#   def message_line_spaces
#     calc_message_line_size
#     ' ' * ((custom_size - message.size) / 2)
#   end

#   def message_line
#     "|#{message_line_spaces}#{@message}#{message_line_spaces}|"
#   end
# end

# banner = Banner.new('To boldly go where no one has gone before.', 0)
# puts banner

# banner = Banner.new('')
# puts banner

# Lines 68 - 74 define the instance method `calc_message_line_size` this reassigns the value of the instance variable `@custom_size` to ensure the message fits the terminal window. This implementation only works up to a size of 60.
# If a custom size is set over 60 during initilaization when calling the to_s method each method call makes a call to `calc_message_line_size`. This reassigns the value of `@custom_size` dependant on which if condition is met.


# 2 ---------- What's the Output? ------------------
# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     "My name is #{@name.upcase}."
#   end
# end

# name = 42
# fluffy = Pet.new(name)
# name += 1

# puts fluffy.name  # => 42
# puts fluffy       # => My name is 42.
# puts fluffy.name  # => 42
# puts name         # => 43

# name is passed to the Pet.new method
# the value of @name is assigned to the string "42"
# the local variable name is reassigned after already being passed to the Pet.new method, therefore all of the puts method calls use "42"
# puts name returns 43 as the local variable was reassigned by name += 1


# 3 ---- Fix the Program - Books (part 1) ------
# class Book
#   attr_reader :author, :title
  
#   def initialize(author, title)
#     @author = author
#     @title = title
#   end

#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new("Neil Stephenson", "Snow Crash")
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)


# 4 ---- Fix the Program - Books (part 2) ------
# class Book
#   attr_accessor :author, :title
  
#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new
# book.author = "Neil Stephenson"
# book.title = "Snow Crash"
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)

# 5 ---- Fix the Program - Persons -----
# class Person
#   def initialize(first_name, last_name)
#     @first_name = first_name.capitalize
#     @last_name = last_name.capitalize
#   end
  
#   def first_name=(value)
#     @first_name = value.capitalize
#   end
  
#   def last_name=(value)
#     @last_name = value.capitalize
#   end

#   def to_s
#     "#{@first_name} #{@last_name}"
#   end
# end

# person = Person.new('john', 'doe')
# puts person

# person.first_name = 'jane'
# person.last_name = 'smith'
# puts person

# 6 ---- Fix the Program - Flight Data -----
# class Flight
#   def initialize(flight_number)
#     @database_handle = Database.init
#     @flight_number = flight_number
#   end
# end

# 7 ----- Buggy Code - Car Mileage -------
# class Car
#   attr_accessor :mileage

#   def initialize
#     @mileage = 0
#   end

#   def increment_mileage(miles)
#     total = mileage + miles
#     self.mileage = total
#   end

#   def print_mileage
#     puts mileage
#   end
# end

# car = Car.new
# car.mileage = 5000
# car.increment_mileage(678)
# car.print_mileage  # should print 5678

# 8 ---- Rectangle and Squares ----
# class Rectangle
#   def initialize(height, width)
#     @height = height
#     @width = width
#   end

#   def area
#     @height * @width
#   end
# end

# class Square < Rectangle
#   def initialize(size)
#     super(size, size) # => the size argument is passed twice to super
#   end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"

# 9 ---- Complete the Program - Cats! ----
# class Pet
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# class Cat < Pet
#   attr_reader :name, :age, :color
  
#   def initialize(name, age, color)
#     super(name, age)
#     @color = color
#   end
  
#   def to_s
#     "My cat #{name} is #{age} years old and has #{color} fur."
#   end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

# 10 ----- Refactoring Vehicles ------
# class Vehicle
#   attr_reader :make, :model
  
#   def initialize(make, model)
#     @make = make
#     @model = model
#   end
  
#   def to_s
#     "#{make} #{model}"
#   end
# end

# class Car < Vehicle
#   def wheels
#     4
#   end
# end

# class Motorcycle < Vehicle
#   def wheels
#     2
#   end
# end

# class Truck < Vehicle
#   attr_reader :payload

#   def initialize(make, model, payload)
#     super(make, model)
#     @payload = payload
#   end

#   def wheels
#     6
#   end
# end

# Each subclass has access to the methods defined in the superclass Vehicle. The getter, setter, initialize and to_s methods
# The Truck's class has an additional parameter payload, truck passes the make and model as arguments to super to be initialized by the inherited method