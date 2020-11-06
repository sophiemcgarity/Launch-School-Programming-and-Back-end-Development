# 3 - Octal
class Octal
  def initialize(num)
    @num = num
  end

  def to_decimal
    multiples = []
    nums = @num.split('')
    decimal = 0

    (nums.size).downto(1) do |index|
      multiple = 8 ** (index - 1)
      multiple = 1 if multiple == 0
      multiples << multiple
    end

    multiples.each_with_index do |item, index|
      decimal += item * nums[index].to_i
    end

    decimal
  end
end

p Octal.new('233').to_decimal