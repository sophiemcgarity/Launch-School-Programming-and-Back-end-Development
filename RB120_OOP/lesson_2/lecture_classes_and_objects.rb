# 1 --------------------------------------------------------------------------------
# class Person
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new('bob')
# bob.name                  # => 'bob'
# bob.name = 'Robert'
# bob.name                  # => 'Robert'

# 2 ------------------------------------------------------------------------------
# class Person
#   attr_reader :first_name
#   attr_accessor :last_name

#   def initialize(first_name, last_name = '')
#     @first_name = first_name
#     @last_name = last_name
#   end
  
#   def name
#     "#{first_name} #{last_name}".strip
#   end
# end

# bob = Person.new('Robert')
# p bob.name                  # => 'Robert'
# p bob.first_name            # => 'Robert'
# p bob.last_name             # => ''
# bob.last_name = 'Smith'
# p bob.name                  # => 'Robert Smith'


# 3 ----------------------------------------------------------------------------
# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(name)
#     parse_full_name(name)
#   end
  
#   def name
#     "#{first_name} #{last_name}".strip
#   end
  
#   def name=(name)
#     parse_full_name(name)
#   end
  
#   private
  
#   def parse_full_name(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# bob = Person.new('Robert')
# bob.name                  # => 'Robert'
# bob.first_name            # => 'Robert'
# bob.last_name             # => ''
# bob.last_name = 'Smith'
# bob.name                  # => 'Robert Smith'

# bob.name = "John Adams"
# bob.first_name            # => 'John'
# bob.last_name

# 4 ---------------------------------------------------------------------------
# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(name)
#     parse_full_name(name)
#   end
  
#   def name
#     "#{first_name} #{last_name}".strip
#   end
  
#   def name=(name)
#     parse_full_name(name)
#   end
  
#   private
  
#   def parse_full_name(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')

# p rob.name == bob.name

# 5 -------------------------------------------------------------------------
# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(name)
#     parse_full_name(name)
#   end
  
#   def name
#     "#{first_name} #{last_name}".strip
#   end
  
#   def name=(name)
#     parse_full_name(name)
#   end
  
#   def to_s
#     name
#   end
  
#   private
  
#   def parse_full_name(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# bob = Person.new("Robert Smith")
# puts "The person's name is: #{bob}"
