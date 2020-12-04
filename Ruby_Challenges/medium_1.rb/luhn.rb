# Luhn Algorithm
class Luhn
  attr_accessor :number

  def initialize(number)
    @number = number.to_i
  end

  def addends
    luhns = @number.to_s.split('').reverse.each_with_index.map do |item, index|
      if index % 2 == 0
        item.to_i
      else
        (item.to_i * 2) >= 10 ? (item.to_i * 2) - 9 : item.to_i * 2
      end
    end
    luhns.reverse
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum % 10 == 0 ? true : false
  end

  def self.create(number)
    luhn = new(number)
    original_num = luhn.number
    return luhn.number if luhn.valid?

    (0..9).each do |num|
      luhn.number = (luhn.number.to_s + num.to_s).to_i
      break if luhn.valid?
      luhn.number = original_num
    end
    luhn.number
  end
end

