# 1 - Series
class Series
  def initialize(digits = "")
    @digits = digits.split('').map(&:to_i)
  end

  def slices(n)
    raise ArgumentError.new('Not enough numbers.') if n > @digits.length
    @digits.each_cons(n).map { |integers| integers }
  end
end
