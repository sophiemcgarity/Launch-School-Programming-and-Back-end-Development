# Vehicle Info

class Vehicle
  attr_accessor :color, :model
  attr_reader   :year
  
  @@number_of_vehicles = 0
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
  end
  
  def self.total_number_of_vehicles
    puts "There are #{@@number_of_vehicles} vehicles."
  end
  
  def speed_up(number)
    @speed += number
    puts "You speed up to #{number} mph."
  end
  
  def brake(number)
    @speed -= number
    puts "You slow down to #{number} mph."
  end
  
  def shut_off
    @speed = 0
    puts "You shut off the engine."
  end
  
  def current_speed
    puts "You are now going #{self.speed}mph."
  end
  
  def spray_paint(color)
    self.color = color
    puts "You car is now #{color}"
  end
  
  def what_year
    puts "This car is a #{self.year} model."
  end
  
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end
  
  def display_age
    puts "Your #{self.model} is #{age} years old."
  end
  
  private
  
  def age
    Time.now.year - self.year.to_i
  end
  
end

module Terrain_traversible
  def mud
    "Easily drives through thick mud."
  end
end

class MyCar < Vehicle
  CAR_INFO = '2 wheel-drive'
  
  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

class MyTruck < Vehicle
  TRUCK_INFO = '4 wheel-drive'
  
  include Terrain_traversible
  
  def to_s
    "My truck is a #{year} #{color} #{model}."
  end
end

shark = MyCar.new('2002', 'blue', 'Carla')

trucky = MyTruck.new('1998', 'red', 'Truckla')

# Student Grades

class Student
  attr_accessor :name, :grade
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(other_name)
    grade > other_name.grade
  end
  
  protected
  
  def grade
    @grade
  end
end

joe = Student.new('Joe', 9)
bob = Student.new('Bob', 7)

puts "Well done!" if joe.better_grade_than?(bob)
