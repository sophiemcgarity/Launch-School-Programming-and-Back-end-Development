class Person
  attr_reader :first_name
  attr_accessor :last_name
  
  def initialize(name)
    name_assign(name)
  end
  
  def name
    (@first_name + ' ' + @last_name).strip
  end
  
  def name=(name)
    name_assign(name)
  end
  
  def to_s
    name
  end
  
  private
  
  def name_assign(name)
    parts = name.split(' ')
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new('Robert Smith')

puts bob

