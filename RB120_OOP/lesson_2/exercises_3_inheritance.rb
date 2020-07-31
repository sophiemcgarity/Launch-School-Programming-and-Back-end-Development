# 1 ///////////////////////////////////////////////////////////////////////////
# Inherited Year
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

# 2 ////////////////////////////////////////////////////////////////////////////
# Start the Engine (part 1)
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

# 3 /////////////////////////////////////////////////////////////////////////////
# Only Pass the Year
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

# 4 //////////////////////////////////////////////////////////////////////////////
# Start the Engine (part 2)
# class Vehicle
#   def start_engine
#     'Ready to go!'
#   end
# end

# class Truck < Vehicle
  
#   def start_engine(speed)
#   super() + " Drive #{speed}, please!"
#   end
# end

# truck1 = Truck.new
# puts truck1.start_engine('fast')

# 5 /////////////////////////////////////////////////////////////////////////////
# Towable (part 1)
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

# 6 ////////////////////////////////////////////////////////////////////////
# Towable (part 2)
# class Vehicle
#   attr_reader :year
  
#   def initialize(year)
#     @year = year
#   end
# end

# module Towable
#   def tow
#     "I can tow a trailer!"
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

# 7 //////////////////////////////////////////////////////////////////////
# Method Lookup (part 1)
# Cat
# Animal

# 8 //////////////////////////////////////////////////////////////////////
# Method Lookup (part 2)
# Cat
# Animal
# Object
# Kernel
# BasicObject

# 9 ///////////////////////////////////////////////////////////////////////
# Method Lookup (part 3)
# Bird
# Flyable
# Animal

# 10 //////////////////////////////////////////////////////////////////////
# Transportation
# module Transportation
#   class Vehicle
#   end
  
#   class Truck < Vehicle
#   end
  
#   class Car < Vehicle
#   end
# end