class Cat
  attr_accessor :name, :purr

  def initialize(name, purr)
    @name = name
    @purr = purr
  end

  def miaow
    "#{name} is miaowing."
  end
  
  def purr_factor
    purr
  end
end