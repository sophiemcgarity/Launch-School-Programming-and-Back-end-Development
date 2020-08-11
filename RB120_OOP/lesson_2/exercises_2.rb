# 1 --------- Generic Greeting (part 1) -----------------
# class Cat
#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end
# end

# Cat.generic_greeting
# kitty = Cat.new
# kitty.class.generic_greeting

# On lines 3 - 5 a class method is defined by prepending self to the method name
# In this example self refers to the cat class
# To invoke class methods they must be called on the class itself, not on an instance of the class. On line 8 the generic_greeting method is called on the Cat class.
# On line 10 generic_greeting is called on the kitty class which is Cat. Therefore the output is the same as line 8's. Calling class on an istance of the Cat ovject results in Cat being returned. If calling generic_greeting on kitty itself, or an instance of the Cat class would result in a NoMethodError as Ruby expects to find an instance method

# 2 --------- Hello, Chloe! -----------
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

# On lines 25 - 27 the instance method rename is defined with one parameter
# On line 26 self.name calls the name setter method and assigns the passed in argument to name. Therefore line 33 outputs the reassigned name value
# When invoking setter methods they must be denoted with self so Ruby knows the difference between initializing a local variable and invoking a setter method

# 3 ------ Identify Yourself (part 1) ------
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

# On lines 40 - 50 the cat class is defined
# on line 41 the attr_accessor method is passed the symbol :name
# on lines 43 - 45 the instance method initialize is defined and takes one argument (name) as a parameter
# On lines 47 - 49 the instance method identify is defined, and returns the calling object as defined on line 48. Self refers to the calling object

# 4 ------ Generic greeting (part 2) ------
# class Cat
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
  
#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end
  
#   def personal_greeting
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')

# Cat.generic_greeting
# kitty.personal_greeting

# On lines 68 - 70 the class method generic_greeting is defined and can be called on the cat class seen on line 79
# On lines 72 - 74 the instance method personal_greeting is defined and used the objects name instance variable on line 73. This is called on the object on line 80

# 5 ---------- Counting Cats ------------------
# class Cat
#   @@number_of_cats = 0
  
#   def initialize
#     @@number_of_cats += 1
#   end
  
#   def self.total
#     puts @@number_of_cats
#   end
# end

# kitty1 = Cat.new
# kitty2 = Cat.new

# Cat.total

# on line 87 the class variable @@number_of_cats is initialize with a value of 0
# on lines 89 - 91 the instance method initialize is defined. Each time a new cat object is intialized the class variable @@Number_of_cats is incremented by one
# On lines 93 - 95 the class method total is defined and outputs the value of the class variable @@total_number_of_cats when called. Resulting in 2 on line 101 after the two cat objects are created on lines 98 and 99

# 6 --------- Colorful Cat -------------------
# class Cat
#   attr_reader :name
  
#   COLOR = 'purple'
  
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello! My name is #{name} and I'm a #{COLOR} cat!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet

# On line 111 the constant color is defined with the string value 'purple'
# The greet method defined on lines 117 - 119 uses this constant in the output message. This constant can be used in all instances of the cat class
# The attr_reader method defined on line 109 takes one argument the symbol name allowing the getter method name to be invoked on line 118 outputing the name that was passed in as an argument to the constructor on line 122

# 7 ------ Identify Yourself (part 2) ------
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

# On lines 137 - 139 a custom to_s instance method is defined. This is called when the object is passed as an argument to the puts method on line 143
# puts calls the to_s method for every argument it gets passed to convert the value to an appropriate string representation. to_s can be overidden to produce a custom output.

# 8 ----- Public Secret ------
# class Person
#   attr_accessor :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# puts person1.secret

# on line 150 the attr_accessor method is used to automatically create secret getter and setter methods

# 9 ----- Private Secret -----
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

# on line 169 the attr_reader method is defined as private by calling private on line 167
# private methods cannot be called outside of the class, but can be called from inside. On line 163 to 165 the instance method share_secret is defined. On line 164 a call to puts is made and passed the getter method secret as an argument. As private methods can be called inside the class this allows the method access to this method.

# 10 ----- Protected Secret -----
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

# On lines 183 - 185 the instance method compare_secret is defined and takes one argument.
# on line 198 person2 is passed as an argument to compare_secret and compare the two secret with the == operator
# On line 189 the secret getter method is defined as a protected method allow the class to have access to everything defined below protected by it does not allow access from outside the class