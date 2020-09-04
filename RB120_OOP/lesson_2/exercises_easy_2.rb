# 1 ---- Fix the Program - Mailable ------
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

# 2 ----- Fix the Program - Drivable -------
# module Drivable
#   def drive
#   end
# end

# class Car
#   include Drivable
# end

# bobs_car = Car.new
# bobs_car.drive

# 3 ---- Complete the Program - Houses -----
# class House
#   include Comparable
#   attr_reader :price

#   def initialize(price)
#     @price = price
#   end

#   def <=>(other_house)
#     price <=> other_house.price
#   end
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2
# puts "Home 2 is more expensive" if home2 > home1

# 4 ---- Reverse Engineering -----
# class Transform
#   def initialize(word)
#     @word = word
#   end

#   def uppercase
#     @word.upcase
#   end

#   def self.lowercase(word)
#     word.downcase
#   end
# end

# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')

# 5 ---- What will this do? -------
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
# puts Something.dupdata # => 'ByeBye', dupdata is called on a class, the class method is called from the Something class
# puts thing.dupdata     # => 'HelloHello', called on an instance of the Something class, the instance method dupdata is called and returns the value of `@data + @data`

# 6 ----- Comaparing Wallets -----
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

# 7 ---- Pet Shelter ------
# class Pet
#   attr_reader :animal, :name

#   def initialize(animal, name)
#     @animal = animal
#     @name = name
#   end

#   def to_s
#     "a #{animal} named #{name}"
#   end
# end

# class Owner
#   attr_reader :name, :pets

#   def initialize(name)
#     @name = name
#     @pets = []
#   end

#   def number_of_pets
#     pets.size
#   end

#   def print_pets
#     puts pets
#   end
# end

# class Shelter
#   attr_accessor :adopted

#   def initialize
#     @adopted = []
#   end

#   def adopt(owner, pet)
#     owner.pets << pet
#     adopted.include?(owner) ? return : adopted << owner
#   end

#   def print_adoptions
#     adopted.each do |owner|
#       puts "#{owner.name} has adopted the following pets:"
#       owner.print_pets
#       puts
#     end
#   end
# end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# 8 ---- Fixe the Program - Expander -----
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

# cannot call private methods with an explicit caller

# 9 ---- Moving ----
# module Moveable
#   def walk
#     puts "#{name} #{gait} forward"
#   end
# end

# class Person
#   include Moveable

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end

# class Cat
#   include Moveable

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
#   include Moveable

#   attr_reader :name

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

# 10 --- Nobility ---
# module Walkable
#   def walk
#     "#{self} #{gait} forward"
#   end
# end

# class Animal
#   attr_reader :name

#   include Walkable
  
#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#     name
#   end
# end

# class Person < Animal
#   private

#   def gait
#     "strolls"
#   end
# end

# class Cat < Animal
#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah < Cat
#   private

#   def gait
#     "runs"
#   end
# end

# class Noble < Person
#   attr_reader :title

#   def initialize(name, title)
#     @title = title
#     super(name)
#   end

#   def to_s
#     "#{title} #{name}"
#   end

#   private

#   def gait
#     "struts"
#   end
# end

# byron = Noble.new("Byron", "Lord")
# p byron.walk
# # => "Lord Byron struts forward"