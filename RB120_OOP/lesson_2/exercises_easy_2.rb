# 1 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Fix the Program - Maliable
# Assume that the Customer and Employee classes have complete implementations
# module Mailable
#   def print_address
#     puts "#{name}"
#     puts "#{address}"
#     puts "#{city}, #{state} #{zipcode}"
#   end
# end

# class Customer
#   include Mailable
  
#   attr_reader :name, :address, :city, :state, :zipcode
# end

# class Employee
#   include Mailable
  
#   attr_reader :name, :address, :city, :state, :zipcode
# end

# betty = Customer.new 
# bob = Employee.new
# betty.print_address
# bob.print_address

# 2 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Fix the Program - Drivable
# Assume that the Car class has a complete implementation
# module Drivable
#   def drive
#   end
# end

# class Car
#   include Drivable
# end

# bobs_car = Car.new
# bobs_car.drive

# 3 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
# Complete The Program - Houses
# class House
#   attr_reader :price
#   include Comparable

#   def initialize(price)
#     @price = price
#   end
  
#   def <=>(other)
#     price <=> other.price
#   end
 
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2
# puts "Home 2 is more expensive" if home2 > home1

# Further Exploration
# Is the technique we employ here to make House objects comparable a good one? (Hint: is there a natural way to compare Houses? Is price the only criteria you might use?) What problems might you run into, if any? Can you think of any sort of classes where including Comparable is a good idea?
  # Instead of the comparable method you could call home1.price and home2.price as these are the values that we are wanting to compare. We would have to define each property of the House object each time we wanted to comapre, which could make our code more easy to read.
  # A class that wants to compare specifically one property of an object could be useful to use comparable
  
# 4 //////////////////////////////////////////////////////////////////////////////////////////
# Reverse Engineering
# class Transform
#   def initialize(word)
#     @word = word
#   end
  
#   def uppercase
#     @word.upcase
#   end
  
#   def self.lowercase(input)
#     input.downcase
#   end
# end

# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')

# 5 //////////////////////////////////////////////////////////////////////////////////////////////
# What Will This Do?
# class Something
#   def initialize
#     @data = 'Hello'
#   end

#   def dupdata
#     @data + @data
#   end

#   def self.dupdata
#     'ByeBye'
#   end
# end

# thing = Something.new
# puts Something.dupdata # 'ByeBye'
# puts thing.dupdata # 'HelloHello'

# 6 //////////////////////////////////////////////////////////////////////////////////////////////
# Comparing Wallets
# class Wallet
#   include Comparable

#   def initialize(amount)
#     @amount = amount
#   end

#   def <=>(other_wallet)
#     amount <=> other_wallet.amount
#   end
  
#   protected
#   attr_reader :amount
# end

# bills_wallet = Wallet.new(500)
# pennys_wallet = Wallet.new(465)

# if bills_wallet > pennys_wallet
#   puts 'Bill has more money than Penny'
# elsif bills_wallet < pennys_wallet
#   puts 'Penny has more money than Bill'
# else
#   puts 'Bill and Penny have the same amount of money.'
# end

# Further Exploration
# Can you think of any applications where protected methods would be desirable?
  # Any time that sensitive information is going to be used

# 7 //////////////////////////////////////////////////////////////////////////////////////////////
# Pet Shelter





# 8 //////////////////////////////////////////////////////////////////////////////////////////////
# Fix The Program - Expander
# class Expander
#   def initialize(string)
#     @string = string
#   end

#   def to_s
#     expand(3)
#   end

#   private

#   def expand(n)
#     @string * n
#   end
# end

# expander = Expander.new('xyz')
# puts expander

# 9 //////////////////////////////////////////////////////////////////////////////////////////////
# Moving
# module Walkable
#   def walk
#     puts "#{name} #{gait} foward"
#   end
# end

# class Person
#   attr_reader :name
#   include Walkable

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end

# class Cat
#   attr_reader :name
#   include Walkable

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
#   attr_reader :name
#   include Walkable

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "runs"
#   end
# end

# mike = Person.new("Mike")
# mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# flash.walk
# # => "Flash runs forward"


# 10 //////////////////////////////////////////////////////////////////////////////////////////////
# Nobility
# module Walkable
#   def walk
#     "#{self} #{gait} forward"
#   end
# end

# class Noble
#   attr_reader :name, :title
#   include Walkable
  
#   def initialize(name, title)
#     @name = name
#     @title = title
#   end
  
#   def to_s
#     "#{title} #{name}"
#   end
  
#   def gait
#     "struts"
#   end
# end

# byron = Noble.new("Byron", "Lord")
# p byron.walk