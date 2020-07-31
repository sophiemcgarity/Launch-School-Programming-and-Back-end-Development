# Question 1 ///////////////////////////////////////////////////
# class BankAccount
#   attr_reader :balance
  
#   def initialize(starting_balance)
#     @balance = starting_balance
#   end
  
#   def positive_balance?
#     balance >= 0
#   end
# end

# do not need the @ in the positive_balance? method as the attr_reader provides access to the instance varaible

# Question 2 ///////////////////////////////////////////////////
# class InvoiceEntry
#   attr_reader :quantity, :product_name
  
#   def initialize(product_name, number_purchased)
#     @quantity = number_purchased
#     @product_name = product_name
#   end
  
#   def updated_quantity(updated_count)
#     # prevent negative quantities from being set
#     quantity = updated_count if updated_count >= 0
#   end
# end

# there is no way to redifine the instance variable quantity as quantity is only provided in the attr_reader, need a way to write to the variable
# add an attr_accessor and pass quantity and use self.quanity in the method
# can reference the variable directly to update it using @quantity

# Question 3 ///////////////////////////////////////////////////
# One way of fixing the code in question 2 is changing the attr_reader to an attr_accessor and changing quantity to self.quantity
  # an issue with this is that the variable is now public and easier to get access to even with any production built into the method itself. The value could be changes outside of the method
  
# Question 4 ///////////////////////////////////////////////////
# class Greeting
#   def greet(string)
#     puts string
#   end
# end

# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# hello = Hello.new
# hello.hi

# Question 5 ///////////////////////////////////////////////////
# class KrispyKreme
#   attr_reader :filling_type, :glazing
  
#   def initialize(filling_type, glazing)
#     @filling_type = filling_type
#     @glazing = glazing
#   end
  
#   def to_s
#     filling = filling_type ? filling_type : 'Plain'
#     glaze   = glazing ? " with #{glazing}": ''
#     filling + glaze
#   end
# end

# donut1 = KrispyKreme.new(nil, nil)
# donut2 = KrispyKreme.new("Vanilla", nil)
# donut3 = KrispyKreme.new(nil, "sugar")
# donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
# donut5 = KrispyKreme.new("Custard", "icing")
# puts donut1
# puts donut2
# puts donut3
# puts donut4
# puts donut5


# Question 6 ///////////////////////////////////////////////////
class Computer
  attr_accessor :template
  
  def create_template
    @template = "template 14231"
  end
  
  def show_template
    template
  end
end

class Computer
  attr_accessor :template
  
  def create_template
    self.template = "template 14231"
  end
  
  def show_template
    self.template
  end
end

# no difference in result as both are referencing the calling object. show_template invokes the getter method template

# Question 7 //////////////////////////////////////////////////
# class Light
#   attr_accessor :brightness, :color
  
#   def initialize(brightness, color)
#     @brightness = brightness
#     @color = color
#   end
  
#   def self.information
#     "I want to turn on the light with a brightness level of super high and a colour of green"
#   end
# end
  