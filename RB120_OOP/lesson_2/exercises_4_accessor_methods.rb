# 1 -------- Reading and Writing -----------
# class Person
#   attr_accessor :name
# end

# person1 = Person.new
# person1.name = 'Jessica'
# puts person1.name

# To access the objects instance variables from the outside we need a getter method. To set an instnace variable value we need a setter method. The attr_accesssor method is passed the symbol :name as ana argument providing the getter and setter methods for the instance variable name.
# On line 6 a new Person object is initialized and set as the value for the local variable person1
# On line 7 name is invoked on person1 and the setter method assigns the value 'Jessica' to the instance variable name
# On line 8 the getter method name is called on person1 to return the value of the instance variable name

# 2 ------- Choose the right method -------
# class Person
#   attr_accessor :name
#   attr_writer :phone_number
# end

# person1 = Person.new
# person1.name = 'Jessica'
# person1.phone_number = '0123456789'
# puts person1.name

# On line 17 the attr_accessor is invoked so there is a getter and setter method for the instance variable @name
# On line 23 the value of @phone_number is set, but does not need to be retrieved. Therefore on line 18 the setter method attr_writer is invoked

# 3 -------- Access Denied ---------
# class Person
#   attr_reader :phone_number

#   def initialize(number)
#     @phone_number = number
#   end
# end

# person1 = Person.new(1234567899)
# puts person1.phone_number

# person1.phone_number = 9987654321
# puts person1.phone_number

# To ensure that the value of @phone_number cannot be modified outside of the class the accessor method attr_reader is used. This allows the number to be read outisde the class on line 39. But line 41 produces a NoMethodError as no setter method is defined with public access inside the Person class.

# 4 ----------- Comparing Names ---------
# class Person
#   attr_accessor :first_name
#   attr_writer :last_name
  
#   def first_equals_last?
#     first_name == last_name
#   end
  
#   private
#   attr_reader :last_name
# end

# person1 = Person.new
# person1.first_name = 'Dave'
# person1.last_name = 'Smith'
# puts person1.first_equals_last?

# To keep the last_name getter method accessible only inside the class the attr_reader accessor method is defined after a call to private. This means that Person only has access to this method.
# The public method first_equals_last? can be used to access the instance variable @last_name through the private accessor method

# 5 --------- Who is Older? -----------
# class Person
#   attr_writer :age
  
#   def older_than?(other)
#     age > other.age
#   end
  
#   protected
#   attr_reader :age
# end

# person1 = Person.new
# person1.age = 17

# person2 = Person.new
# person2.age = 26

# puts person1.older_than?(person2)

# The accessor method attr_reader is invoked after a call to the protected method. When a method is protected only instances of the class or a subclass can call the method. This means information can be shared between instances of the same class. But remain private outside of the class.
# The getter method on line 76 is protected which means it can only be accessed from an instance of the same class. 
# The instance method older_than? needs to be invoked on an existing instance and passed in another instance as an argument. These allows for the two age instance variables to be compared.

# 6 ----------- Guaranteed Formatting ------------
# class Person
#   attr_reader :name
  
#   def name=(n)
#     @name = n.capitalize
#   end
# end

# person1 = Person.new
# person1.name = 'eLiZaBeTh'
# puts person1.name

# The accessor method attr_reader on line 93 provides the name getter method
# As the name is to be capitalized when assigned a custom setter method is defined on lines 95 - 97. The instance variable @name is assigned the passed in value from line 101 and capitalized.

# 7 -------- Prefix the Name ----------
# class Person
#   attr_writer :name
  
#   def name
#     "Mr. #{@name}"
#   end
# end

# person1 = Person.new
# person1.name = 'James'
# puts person1.name

# On lines 111 - 113 the getter method is manually implemented to prefix the name instance variable with Mr. through use of string interpolation

# 8 ------- Avoid Mutation ---------
# class Person
#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name.clone
#   end
  
# end

# person1 = Person.new('James')
# person1.name.reverse!
# puts person1.name

# Getter methods typicslly return a reference to the instance variable. This reference can be used to mutate the return value, which mutates the instance variable itself.
# Invoking clone on the instance variable @name on line 129 returns a copy of @name instead of a reference to it. This means any modifications done to the return value won't affect the value of @name

# 9 ------- Calculated Age --------
# class Person
#   def age
#     @age * 2
#   end
  
#   def age=(age)
#     @age = age * 2
#   end
# end

# person1 = Person.new
# person1.age = 20
# puts person1.age

# The getter and setter method are manually implemented. In both methods the value is multiplied by 2 upon initialization.

# class Person
#   def age=(age)
#     @age = double(age)
#   end
  
#   def age
#     double(@age)
#   end
  
#   private
  
#   def double(value)
#     value * 2
#   end
# end

# person1 = Person.new
# person1.age = 20
# puts person1.age

# The double instance method defined on lines 169 - 171 takes a value and multiplies it by 2. This method is used in the getter and setter methods. The getter methods returns the value of the instance variable @age multiplied by 2. The setter method assigns the value of the passed in argument multiplied by 2 to the instance variable @age.

# 10 ----- Unexpected Change ---------
# class Person
#   attr_accessor :name
  
#   def name
#     "#{@first_name} #{@last_name}"
#   end
  
#   def name=(name)
#     parts = name.split
#     @first_name = parts.first
#     @last_name = parts.last
#   end
# end

# person1 = Person.new
# person1.name = 'John Doe'
# puts person1.name

# The setter method on lines 188 - 192 takes one argument, a string. The string input is split into an array and the instance variables @first_name and @last_name are assigned their required values from the array.
# The instance variables @first_name and @last_name are output with stirng interpolation seperated with a space in the getter method on lines 184 - 186