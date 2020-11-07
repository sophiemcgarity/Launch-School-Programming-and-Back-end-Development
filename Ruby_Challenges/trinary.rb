# Trinary
# write a program that will convert a trinary number, represented as a string, to its decimal equivalent using first principles
# trinary numbers can only contain three symbolc: 0, 1, and 2
# invalid entries should convert to 0

# want to iterate over each individual number and convert to the trinary version
# once each of the trinary versions are calculated, add together to get the trinary conversion

# split the string by each character
# validate if the string contains only valid characters
  # a character is valid if it is integers 0, 1, 2
  # convert each character into an integer if all valid characters
  # if not a valid character convert to 0
# initialize a local variable to store an array of trinary numbers
# iterate over the array of converted integers
# convert the decimal number to trinary
  # decimal number * 3 ** index

# check if the string contains any invalid characters
  # if yes
  # nums = [0]
  # else
  # convert nums to i

class Trinary
  INVALID = /[a-zA-Z3456789]/

  def initialize(str)
    str.match?(INVALID) ? @nums = [0] : @nums = str.split('').reverse.map(&:to_i)
  end

  def to_decimal
    trinarys = []

    @nums.each_with_index do |item, index|
      trinarys << item * 3 ** index
    end

    trinarys.reduce(:+)
  end
end