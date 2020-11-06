# 3 - Octal
class Octal
  def initialize(num)
    @nums = num.split('').map(&:to_i)
  end

  def to_decimal
    digits = []
    @nums.map.with_index do |item, index|
      digits << item * 8 ** (@nums.size - index - 1)
    end
    digits.reduce(:+)
  end

end

p Octal.new('233').to_decimal  # 155