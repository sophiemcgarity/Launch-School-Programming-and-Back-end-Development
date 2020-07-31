# 1 ///////////////////////////////////////////////////////////////////////////
# Banner Class
# Further exploration attempt
# class Banner
#   def initialize(message, banner_width = 20)
#     @message = message
#     @banner_width = banner_width
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def banner_width
#     if @banner_width.odd?
#       @banner_width += 1
#     end
    
#     case
#     when @banner_width > 100
#       return 100 
#     when @banner_width < @message.size
#       return (@message.size + 2)
#     when @banner_width <= 3
#       return 4
#     else
#       @banner_width
#     end
#   end
  
#   def message_spacing
#     ' ' * ((banner_width - @message.size) / 2)
#   end
  
#   def multi_line_spacing(text_line)
#     ' ' * ((banner_width - text_line.size) / 2)
#   end
  
#   def multi_line_last_spacing(first_line_size, last_line_size)
#     ' ' * (first_line_size - last_line_size)
#   end
  
#   def horizontal_rule
#     "+#{'-' * (banner_width)}+"
#   end

#   def empty_line
#     "|#{' ' * (banner_width)}|"
#   end

#   def message_line
#     if @message.size > 100
#       message_lines = @message.scan(/.{1,59}/m)
#       message_lines.map do |message|
#         if message == message_lines.last
#           "|#{multi_line_spacing(message_lines[0])}#{message}#{multi_line_last_spacing(message_lines.first.size, message_lines.last.size) + multi_line_spacing(message_lines[0])}|"
#         else
#           "|#{multi_line_spacing(message_lines[0])}#{message}#{multi_line_spacing(message_lines[0])}|"
#         end
#       end
#     else
#       "|#{message_spacing}#{@message}#{message_spacing}|"
#     end
#   end
# end

# banner = Banner.new('0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,0,1,2,3,4,5,6,7,8,9,', 99)
# puts banner


# 2 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# What's the Output?
# class Pet
#   attr_reader :name
  
#   def initialize(name)
#     @name = name.to_s
#   end
  
#   def to_s
#     "My name is #{@name.upcase}" 
#   end
# end

# name = 42
# fluffy = Pet.new(name)
# name += 1
# puts fluffy.name #42
# puts fluffy # My name is 42
# puts fluffy.name #42 
# puts name # 43 

# number stays as 42 as changing the local variable outside the class does not change the value of the instance variable inside the class

# 3 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Fix the Program - Books (Part 1)
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

# Further Exploration
# What are the differences between attr_reader, attr_writer, and attr_accessor? 
  # attr_reader - getter method, only allows for retrival of the instance method
  # attr_writer - setter method, used to set the value of instance varaible
  # attr_accessor - getter and setter method, allows for reading and writing of instance variables
# Why did we use attr_reader instead of one of the other two? 
  # after initialization the inforamtion was only being read, their wsa no need to include methods to change the instance variables
# Would it be okay to use one of the others? Why or why not?
  # could use the attr_accessor, however in this case their is no need to add that feature as the information is only being read
  
# Instead of attr_reader, suppose you had added the following methods to this class:

  # def title
  #   @title
  # end
  
  # def author
  #   @author
  # end

# Would this change the behavior of the class in any way? If so, how? If not, why not? 
  # Would not change the behaviour as this methods are used for reading the instance variable to be output in the string
# Can you think of any advantages of this code?
  # it is clearer how we are reading the title and author methods from inside the class
  
# 4 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Fix the program - Books (part 2)
# class Book
#   attr_accessor :author, :title
  
#   def initialize
#     @author = author
#     @title = title
#   end
  
#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new
# book.author = "Neil Stephenson"
# book.title = "Snow Crash"
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)

# What do you think of this way of creating and initializing Book objects? (The two steps are separate.) Would it be better to create and initialize at the same time like in the previous exercise? What potential problems, if any, are introduced by separating the steps?
  # Setting the value of the author and the title at initialization removes the need for the setter methos. This reduces the risk of a book's author and title being renamed incorrectly

# 5 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Fix the program - Persons
# class Person
#   def initialize(first_name, last_name)
#     @first_name = first_name.capitalize
#     @last_name = last_name.capitalize
#   end
  
#   def first_name=(new_first_name)
#     @first_name = new_first_name.capitalize
#   end
  
#   def last_name=(new_last_name)
#     @last_name = new_last_name.capitalize
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

# 6 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Fix the program - Flight Data
# class Flight
#   def initialize(flight_number)
#     @database_handle = Database.init
#     @flight_number = flight_number
#   end
# end

# 7 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Buggy Code - Car Mileage
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

# 8 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Rectangles and Squares
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
#   def initialize(number)
#     super(number, number)
#   end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"

# 9 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Complete the program - Cats!
# class Pet
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# class Cat < Pet
#   def initialize(name, age, description)
#     super(name, age)
#     @description = description
#   end
  
#   def to_s
#     "My cat #{@name} is #{@age} years old and has #{@description} fur."
#   end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

# Further Exploration
# Why would we be able to omit the initialize method? Would it be a good idea to modify Pet in this way? Why or why not? How might you deal with some of the problems, if any, that might arise from modifying Pet?
  # Modifying Pet would make sense in this instance as all pets have a color, reducing the need to use an initialize method in Cat. However, if a supplied argument is unique to Cat, then initialization would be required.
# 10 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Refactoring Vehicles
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

# Further Exploration
# Would it make sense to define a wheels method in Vehicle even though all of the remaining classes would be overriding it? Why or why not? If you think it does make sense, what method body would you write?
  # If each method is being overriden each time then their isn't a point in moving it too the super class. Unless it can be used as an indicator to the developer to remember to define the number of wheels. In this case changing the instance method to an instance variable might make more sense. Also depends on if we are assuming that all vehicles have wheels.