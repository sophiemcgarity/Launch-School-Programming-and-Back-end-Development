# Sum of Multiples
class SumOfMultiples
  def initialize(*multiple_input)
    @multiple_input = multiple_input
  end

  def self.to(n)
    new(3, 5).to(n)
  end

  def to(n)
    multiples = (0...n).select do |num|
      num if @multiple_input.any? { |multiple| num % multiple == 0 }
    end
    multiples.reduce(:+)
  end
end
