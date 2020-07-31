# 1 ------------------------------------------------------------------------------------------
# Privacy
# class Machine
#   def start
#     flip_switch(:on)
#   end

#   def stop
#     flip_switch(:off)
#   end

#   def get_switch
#     case switch
#     when :on then puts "Switch is on."
#     when :off then puts "Switch is off."
#     else puts "No switch initialized."
#     end
#   end

#   private

#   attr_accessor :switch

#   def flip_switch(desired_state)
#     self.switch = desired_state
#   end
# end

# 2 -------------------------------------------------------------------------------------
# Fixed Array




# 3 -----------------------------------------------------------------------------------
# Students
# class Student
#   attr_reader :name

#   def initialize(name, year)
#     @name = name
#     @year = year
#   end

#   def greeting
#     "Hello my name is #{name}."
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year)
#     @parking = parking
#   end

#   def greeting
#     super + " And I have parking on campus."
#   end
# end

# class Undergraduate < Student
#   def greeting
#     super + " And I don't have parking on campus."
#   end
# end

# tim = Graduate.new('Tim', 1980, true)
# tom = Undergraduate.new('Tom', 1990)

# puts tim.greeting
# puts tom.greeting

# 4 ---------------------------------------------------------------------------
# Circular Queue
require 'pry'
class CircularQueue
  attr_accessor :buffer, :next_position, :oldest_position
  attr_reader :size

  def initialize(size)
    @size = size
    @buffer = [nil] * size
    @next_position = 0
    @oldest_position = 0
  end

  def enqueue(item)
    
    buffer[next_position] = item
    
    if @next_position >= (size - 1)
      @next_position = 0
    else
      @next_position += 1
    end
  end

  def dequeue
    value = buffer[oldest_position]
    buffer[oldest_position] = nil
    @oldest_position = ((@oldest_position + 1) % size) unless value.nil?
    value
  end
end

queue = CircularQueue.new(3)
queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

p queue.buffer
queue.enqueue(5)
p queue.buffer
queue.enqueue(6)
p queue.buffer
queue.enqueue(7)
p queue.buffer

puts queue.dequeue #== 5
puts queue.dequeue #== 6
puts queue.dequeue #== 7
puts queue.dequeue == nil




