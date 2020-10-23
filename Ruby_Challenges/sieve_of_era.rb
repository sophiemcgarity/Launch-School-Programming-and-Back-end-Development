# 2 - Sieve of Eratosthenes
# class Sieve
#   def initialize(limit)
#     @limit = limit
#     @range = (2..@limit).each_with_object({}) { |num, hash| hash[num] = :unmarked }
#   end

#   def primes
#     @range.each do |key, value|
#       find_unmarked_mark_multiples(key, value)
#     end
#     @range.select {|key, value| key if value == :unmarked }.keys
#   end

#   def find_unmarked_mark_multiples(key, value)
#     multiple_test_num = (key + 1)
#     if value == :unmarked
#       until multiple_test_num > @limit
#         @range[multiple_test_num] = :marked if multiple_test_num % key == 0
#         multiple_test_num += 1
#       end
#     end
#   end
# end

class Sieve
  def initialize(max)
    @range = (2..max).to_a
  end
  
  def primes
    @range.each do |number|
      @range.delete_if do |multiple|
        number != multiple && multiple % number == 0
      end
    end
  end
end
