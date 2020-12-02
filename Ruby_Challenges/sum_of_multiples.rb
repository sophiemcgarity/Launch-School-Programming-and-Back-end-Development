# Sum of Multiples
class SumOfMultiples
  def initialize(*multiple_input)
    @multiple_input = multiple_input
  end

  def to(n)
    result_multiples = []

    (0...n).each do |num|
      @multiple_input.each do |multiple|
        result_multiples << num if num % multiple == 0
      end
    end

    result_multiples.uniq.reduce(:+)
  end

  def self.to(n)
    (0...n).select { |number| number % 3 == 0 || number % 5 == 0 }.reduce(:+)
  end
end

sum = SumOfMultiples.new(4, 6).to(15)
p sum