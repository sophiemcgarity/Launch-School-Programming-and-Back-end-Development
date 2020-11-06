# 3 - Octal
class Octal
  def initialize(num)
    @nums = num.split('').map(&:to_i) unless num.match?(/[a-zA-Z89]/)
  end

  def to_decimal
    return 0 if @nums == nil
    digits = []
    @nums.map.with_index do |item, index|
      digits << item * 8 ** (@nums.size - index - 1)
    end
    digits.reduce(:+)
  end
end
