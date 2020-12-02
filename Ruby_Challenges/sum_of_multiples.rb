# Sum of Multiples
class SumOfMultiples
  def initialize(*multiple_input)
    @multiple_input = multiple_input
  end

  def self.to(n)
    new(3, 5).to(n)
  end

  def to(n)
    result_multiples = []
    (0...n).each do |num|
      result_multiples << num if @multiple_input.any? { |multiple| num % multiple == 0 }
    end
    result_multiples.reduce(:+)
  end
end
