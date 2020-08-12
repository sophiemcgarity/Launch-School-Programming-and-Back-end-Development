# 1 ---------- Inherited Year -----------
# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year

# car1 = Car.new(2006)
# puts car1.year

# On lines 2 - 8 the Vehicle class is defined. On line 3 the year getter method is passed one argument :year
# On lines 5 - 7 the instance method initialize takes one argument year and initializes the instnce variable @year for every Vehicle object. The Truck and Car class inherit this behaviour from the Vehicle class. Therefore the year getter method can be called on line 17 and 20.

# 2 ------- Start the Engine (part 1) ---------
# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   def initialize(year)
#     super
#     start_engine
#   end
  
#   def start_engine
#     puts 'Ready to go!'
#   end
# end

# truck1 = Truck.new(1994)
# puts truck1.year

# On lines 35 - 38 the instance method initialize inherited from the Vehicle class is overriden by the one defined in the Truck class.
# The functionality of the contructor in the Vehicle class is invoked using super. . And start_engine is added as an additional feature of the Truck class to be called when a new object is initialized.

# 3 ---------- Only Pass the Year -------------
# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   attr_reader :bed_type
  
#   def initialize(year, bed_type)
#     super(year)
#     @bed_type = bed_type
#   end
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994, 'Short')
# puts truck1.year
# puts truck1.bed_type

# To continue to give the Truck class a year instance variable super is used and passed year as an argument. The instance variable bed_type is initialized from within the Truck class giving only objects of this class this instance variable.
# As the Vehicle initialize instance method only accepts one argument. Where super is invoked on line 64 only one aregument, year, is passed.


# 4 ------- Start the Engine (part 2) ---------
# class Vehicle
#   def start_engine
#     'Ready to go!'
#   end
# end

# class Truck < Vehicle
#   def start_engine(speed)
#     super() + " Drive #{speed}, please!"
#   end
# end

# truck1 = Truck.new
# puts truck1.start_engine('fast')

# super invokes the method in the inheritance heirachy with the same name as the method in the child. The start_engine instance method in the Truck class on line 88 takes one argument. But the instance method start_engine in the Vehicle class takes no arguments. super needs to be called with an empty parathesis to call the method from the Vehicle class without any arguments being passed. Without the empty parethisis Ruby assums all arguments should be passed which results in a wrong number of arguments error

# 5 ------- Towable (part 1) --------
# module Towable
#   def tow
#     puts "I can tow a trailer!"
#   end
# end

# class Truck
#   include Towable
# end

# class Car
# end

# truck1 = Truck.new
# truck1.tow

# including the Towable module in the Truck class gives object of this class access to the methods defined in the Towable module. 
# The reserve word include is used to give Truck access to the #tow method in Towable

# 6 ------- Towable (part 2) -----------
# module Towable
#   def tow
#     'I can tow a trailer!'
#   end
# end

# class Vehicle
#   attr_reader :year
  
#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   include Towable
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year
# puts truck1.tow

# car1 = Car.new(2006)
# puts car1.year

# Car and Truck classes both inherit from the Vehicle superclass and have a year instance variable created upon intialization
# Truck has the module Towable included in the class so has access to the tow instance method

# 7 ---- Method Lookup (part 1) ------
# class Animal
#   attr_reader :color

#   def initialize(color)
#     @color = color
#   end
# end

# class Cat < Animal
# end

# class Bird < Animal
# end

# cat1 = Cat.new('Black')
# cat1.color

# Cat
# Animal

# When color is called on the cat1 object Ruby first checks the Cat class ascat1 is an instance of that class. It then checks the super class Animal as the Cat class is a subclass of animal.

# 8 ----- Method Lookup (part 2) -------
# class Animal
# end

# class Cat < Animal
# end

# class Bird < Animal
# end

# cat1 = Cat.new
# cat1.color

# Cat
# Animal
# Object
# Kernel
# BasicObject

# As the method is not present Ruby searches the entire method lookup chain for the method and the presents the undefined method error.

# 9 ---- Method Lookup (part 3) ----
# module Flyable
#   def fly
#     "I'm flying!"
#   end
# end

# class Animal
#   attr_reader :color

#   def initialize(color)
#     @color = color
#   end
# end

# class Cat < Animal
# end

# class Bird < Animal
#   include Flyable
# end

# bird1 = Bird.new('Red')
# bird1.color

# Bird
# Flyable
# Animal

# When a module is mixed into a class the class is searched before the module, and the module is searched before the superclass

# 10 ---- Transportation -------
# module Transportation
#   class Vehicle
#   end
  
#   class Truck < Vehicle
#   end
  
#   class Car < Vehicle
#   end
# end

# Modules can be used for namespacing which groups together similar classes within a module. This makes it easy to recoginze the purpose of the contained classes. Grouping classes can also help avoid collision with classes of the same name.
