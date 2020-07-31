
# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def speak
#     "#{name} says arf!"
#   end

#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end

#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end
# end

# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# puts sparky.info
# sparky.change_info('Molly', '50 cm', '9 kg')
# puts sparky.info
# ///////////////////////////////////////////////////
# class GoodDog
#   attr_accessor :name, :height, :weight
  
#   def initialize(n, h, w)
#     self.name   = n
#     self.height = h
#     self.weight = w
#   end
  
#   def change_info(n, h, w)
#     self.name   = n
#     self.weight = h
#     self.weight = w
#   end
  
#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end
  
#   def what_is_self
#     self
#   end
# end
# //////////////////////////////////////////////
class Animal
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

sparky = GoodDog.new("brown")

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
  
  def age 
    puts @age
  end
end

bruno = BadDog.new(2, "bear")
p bruno.age

#//////////////////////////////////////////////////////////
module Swimmable
  def swim
    "I'm swimming"
  end
end

class Animal; end
  
class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

puts sparky.swim
puts neemo.swim
puts paws.swim

////////////////////////////////////////////////////////////////////////////

module Walkable
  def walk
    "I'm walking"
  end
end

module Swimmable
  def swim
    "I'm swimming"
  end
end

module Climbable
  def climb
    "I'm climbing"
  end
end

class Animal
  include Walkable
  
  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts GoodDog.ancestors

//////////////////////////////////////////////////////////////

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end
  
  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
  
  def self.some_method(num)
    num ** 2
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new

p value = Mammal.some_method(5)

//////////////////////////////////////////////////////////
class GoodDog
  DOG_YEARS = 7
  
  attr_accessor :name, :age
  
  def initialize(n, a)
    self.name = n
    self.age = a
  end
  
  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end
  
  private
  
  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.public_disclosure

# //////////////////////////////////////////////////
class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end
  
  protected
  
  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
p fido.a_protected_method