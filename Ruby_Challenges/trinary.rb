# Trinary

class Trinary
  INVALID = /[^012]/

  def initialize(str)
    @trinary_str = str
  end

  def to_decimal
    return 0 if @trinary_str.match?(INVALID)
    @nums = @trinary_str.split('').reverse.map(&:to_i)
    @nums.each_with_index.map { |item, index| item * 3 ** index }.reduce(:+)
  end
end