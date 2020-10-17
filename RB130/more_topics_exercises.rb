# Easy 1

# 1 - Enumerable Class Creation
# class Tree
#   include Enumerable
  
#   def each
#     # yields each member of the collection, one at a time
#     # can then use this each method to work in other methods that require an iterative process
#   end
# end

# 2 - Optional Blocks
# def compute
#   return "Does not compute." unless block_given?
#   yield
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

# 2 - Further Exploration
# def compute(arg)
#   return "No block given." unless block_given?
#   yield(arg)
# end

# compute(1) { |num| puts num }
# p compute(4)
# compute("Hello") { |word| puts word + "!" }

# 3 - Find Missing Numbers
# def missing(arr)
#   complete_nums = []
#   missing_nums = []
  
#   ((arr.first)..(arr.last)).each { |num| complete_nums << num }
  
#   complete_nums.each do |num|
#     arr.include?(num) ? next : missing_nums << num
#   end
  
#   missing_nums
# end

# p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) == []
# p missing([1, 5]) == [2, 3, 4]
# p missing([6]) == []

# 4 - Divisors
# def divisors(num)
#   divisors = []
  
#   (1..num).each do |n|
#     divisors << n if (num.to_f / n.to_f) == (num / n)
#   end
  
#   divisors
# end

# def divisors(num)
#   1.upto(num).select do |n|
#     num % n == 0
#   end
# end

# Further exploration

# def divisors(num)
#   square_root = Math.sqrt(num)
#   divisors = []
  
#   (1..square_root).each do |el|
#     if num % el == 0
#       divisors << num / el 
#       divisors << el
#     end
#   end
  
#   divisors.sort.uniq
# end

# p divisors(12)

# 5 - Encrypted Pioneers

# PIONEERS = [
#   "Nqn Ybirynpr",
#   "Tenpr Ubccre",
#   "Nqryr Tbyqfgvar",
#   "Nyna Ghevat",
#   "Puneyrf Onoontr",
#   "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
#   "Wbua Ngnanfbss",
#   "Ybvf Unvog",
#   "Pynhqr Funaaba",
#   "Fgrir Wbof",
#   "Ovyy Tngrf",
#   "Gvz Orearef-Yrr",
#   "Fgrir Jbmavnx",
#   "Xbaenq Mhfr",
#   "Fve Nagbal Ubner",
#   "Zneiva Zvafxl",
#   "Lhxvuveb Zngfhzbgb",
#   "Unllvz Fybavzfxv",
#   "Tregehqr Oynapu"
# ]

# def decrypt(str)
#   str.each_char.reduce('') do |result, char|
#     case char
#     when 'a'..'m', 'A'..'M' then result + (char.ord + 13).chr
#     when 'n'..'z', 'N'..'Z' then result + (char.ord - 13).chr
#     else result + " "
#     end
#   end
# end

# PIONEERS.each do |name|
#   puts decrypt(name)
# end

# 6 - Iterators: True for any?
# def any?(arr)
#   arr.each { |el| return true if yield(el) == true }
#   return false
# end

# p any?([1, 3, 5, 6]) { |value| value.even? } == true
# p any?([1, 3, 5, 7]) { |value| value.even? } == false

# 7 - Iterators True for all?
# def all?(arr)
#   arr.each { |el| return false if yield(el) == false }
#   return true
# end

# p all?([1, 3, 5, 6]) { |value| value.odd? } == false
# p all?([1, 3, 5, 7]) { |value| value.odd? } == true

# 8 - Iterators: True for None?
# def none?(arr)
#   arr.each { |el| return false if yield(el) == true  }
#   return true
# end

# p none?([1, 3, 5, 6]) { |value| value.even? } == false
# p none?([1, 3, 5, 7]) { |value| value.even? } == true

# 9 - Iterators: True for One?
# def one?(arr)
#   trues = 0
  
#   arr.each do |el|
#     break if trues >= 2
#     trues += 1 if yield(el) == true
#   end
  
#   trues == 1 ? true : false
# end

# p one?([1, 3, 5, 6]) { |value| value.even? }

# 10 - Count Items
# def count(arr)
#   count = 0
#   arr.each { |el| count += 1 if yield(el) == true }
#   count
# end

# Further exploration
# def count(arr)
#   idx = 0
#   count = 0
  
#   loop do
#     break if idx >= arr.size
#     count += 1 if yield(arr[idx]) == true
#     idx += 1
#   end
  
#   count
# end
