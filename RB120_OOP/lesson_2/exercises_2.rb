# 1 //////////////////////////////////////////////////////////////
# Generic Greeting (part 1)
# class Cat
#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end
# end

# Cat.generic_greeting

# 2 /////////////////////////////////////////////////////////////
# Hello, Chloe!
# class Cat
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def rename(new_name)
#     self.name = new_name
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.name
# kitty.rename('Chloe')
# p kitty.name

# 3 ////////////////////////////////////////////////////////////
# Identify Yourself (part 1)
# class Cat
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def identify
#     self
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.identify

# 4 ///////////////////////////////////////////////////////////////
# Generic Greeting (part 2)
# class Cat
#   attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end
  
#   def personal_greeting
#     puts "Hello! My name is #{name}"
#   end
# end

# kitty = Cat.new('Sophie')

# Cat.generic_greeting
# kitty.personal_greeting

# 5 ///////////////////////////////////////////////////////////////////
# Counting Cats
# class Cat
#   @@number_of_cats = 0
  
#   def initialize
#     @@number_of_cats += 1
#   end
  
#   def self.total
#     p @@number_of_cats
#   end
# end

# kitty1 = Cat.new
# kitty2 = Cat.new
# Cat.total

# 6 //////////////////////////////////////////////////////////////////////
# Colorful Cat
# class Cat
#   COLOR = "purple"
  
#   attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello! My name is #{name} and I'm a #{COLOR} cat!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet

# 7 ///////////////////////////////////////////////////////////////////////////
# Identify Yourself (part 2)
# class Cat
#   attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#     "I'm #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty

# 8 //////////////////////////////////////////////////////////////////////////
# Public Secret
# class Person
#   attr_accessor :secret
  
#   def initialize
#     @secret = secret
#   end
  
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# puts person1.secret

# 9 //////////////////////////////////////////////////////////////////////////
# Private Secret
# class Person
#   attr_writer :secret
  
#   def share_secret
#     puts secret
#   end
  
#   private
  
#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret

# 10 //////////////////////////////////////////////////////////////////////////
# Protected Secret
# class Person
#   attr_writer :secret
  
#   def compare_secret(other_person)
#     secret == other_person.secret
#   end
  
#   protected
  
#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'

# person2 = Person.new
# person2.secret = 'Shh.. this is a different secret!'

# puts person1.compare_secret(person2)