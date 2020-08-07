class Person
  attr_accessor :first_name, :last_name

  def initialize(name)
    set_name(name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    set_name(full_name)
  end

  def to_s
    name
  end

  private

  def set_name(full_name)
    parts = full_name.split
    self.first_name = parts[0]
    self.last_name = parts[1] ? parts[1] : ''
  end
end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
# Lines 1 - 27 define the Person class
# On line 29 a new Person object is assigned to the local variable bob. The string "Robert Smith" is passed as an argument to the constructor.
# Lines 4 - 7 define the instance method initilize which takes one parameter name.
# On line 5 the set_name instance method is called with the local variable name passed as an argument
# Lines 22 - 26 define the set_name instance method that takes one argument.
# On line 23 the passed argument string is split into an array and assigned to the local variable parts
# On line 24 the first_name setter method is called and assigned the value of parts[0]
# On line 25 the last_name setter method is called and assigned the value of parts[1]
# These setter methods can be called as the attr_accessor on line 2 defines them for the Person class.