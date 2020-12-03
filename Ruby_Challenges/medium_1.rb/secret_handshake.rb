# Secret Handshake
class SecretHandshake
  CODE = { 1 => "wink", 10 => "double blink", 100 => "close your eyes", 1000 => "jump" }

  def initialize(decimal)
    @decimal = decimal.to_i
  end

  def commands
    handshake_strs = []
    split_binarys = []
    binarys = @decimal.to_s(2).split('').reverse
    multiplier = 1

    binarys.each do |binary|
      split_binarys << binary.to_i * multiplier
      multiplier *= 10
    end

    split_binarys.each do |num|
      handshake_strs << CODE[num] unless CODE[num] == nil
    end

    split_binarys.include?(10000) ? handshake_strs.reverse : handshake_strs
  end
end
