# Secret Handshake
# class SecretHandshake
#   CODE = { 1 => "wink", 10 => "double blink", 100 => "close your eyes", 1000 => "jump" }

#   def initialize(decimal)
#     @decimal = decimal.to_i
#   end

#   def commands
#     handshake_strs = []
#     split_binarys = []
#     binarys = @decimal.to_s(2).split('').reverse
#     multiplier = 1

#     binarys.each do |binary|
#       split_binarys << binary.to_i * multiplier
#       multiplier *= 10
#     end

#     split_binarys.each do |num|
#       handshake_strs << CODE[num] unless CODE[num] == nil
#     end

#     split_binarys.include?(10000) ? handshake_strs.reverse : handshake_strs
#   end
# end

class SecretHandshake
  def initialize(decimal)
    @decimal = decimal.to_i
  end

  def commands
    binary = @decimal.to_s(2)
    code_words = []
    binary.split('').reverse.each_with_index do |item, index|
      case
      when item == "1" && index == 0 then code_words << "wink"
      when item == "1" && index == 1 then code_words << "double blink"
      when item == "1" && index == 2 then code_words << "close your eyes"
      when item == "1" && index == 3 then code_words << "jump"
      end
    end
    binary.length == 5 ? code_words.reverse : code_words
  end
end

