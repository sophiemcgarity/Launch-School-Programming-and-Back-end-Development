# 1 -----------------------------------------------------------------------------------------------------------
# Rotation part 1

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
# p rotate_array(['a']) #== ['a']

# 2 ------------------------------------------------------------------------------------------------
# Rotation part 2

# def rotate_rightmost_digits(number, index)
#   string_nums = number.to_s.chars
#   rotated = string_nums[0..(-index - 1)] + rotate_array(string_nums[-index..-1])
#   rotated.join.to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219

# 3 ---------------------------------------------------------------------------------------
# Rotation part 3

# def max_rotation(number)
#   index = number.to_s.size
#   current_num = number
  
#   number.to_s.size.times do
#     current_num = rotate_rightmost_digits(current_num, index)
#     index -= 1
#   end
  
#   current_num
# end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3

# 4 ----------------------------------------------------------------------------------------------
# 1000 lights

# def lights(num)
#   switches = []
#   num.times do |n|
#     switches << [(n + 1), true]
#   end
  
#   multiple = 2
#   until multiple > num
  
#   switches.each do |switch|
#     if switch[0] % multiple == 0
#       switch[1] = !switch[1]
#     end
#   end
  
#   multiple += 1
#   end
  
#   on_switches = []
#   off_switches = []
  
#   switches.each do |switch| 
#     if switch[1] == true 
#       on_switches << switch[0] 
#     else
#       off_switches << switch[0]
#     end
#   end
  
#   text_description(on_switches, off_switches)
# end

# def text_description(on_switches, off_switches)
#   off_format = "#{off_switches[0..-2].join(', ')} and #{off_switches[-1]}"
#   on_format = "#{on_switches[0..-2].join(', ')} and #{on_switches[-1]}"
#   puts "Lights #{off_format} are now off; #{on_format} are on."
# end

# lights(5)

# 5 ---------------------------------------------------------------------------------------------
# Diamonds!

# STAR = '*'
# SPACE = ' '
  
# def diamond(n)
#   stars = 1
#   spaces = (n - 1) 
  
#   until stars >= n
#     puts "#{SPACE * (spaces / 2)}#{STAR * stars}#{SPACE * (spaces / 2)}"
#     spaces -= 2
#     stars += 2
#   end
  
#   until stars < 1
#     puts "#{SPACE * (spaces / 2)}#{STAR * stars}#{SPACE * (spaces / 2)}"
#     spaces += 2
#     stars -= 2
#   end
# end

# diamond(9)

# empty diamond

# def print_row(right_index, left_index, n)
#   row = [' '] * n
#   row[right_index] = '*'
#   row[left_index] = '*'
#   puts row.join
# end

# def diamond(n)
#   right_index = n / 2
#   left_index = n / 2
  
#   (n / 2).times do
#     print_row(right_index, left_index, n)
#     right_index -= 1
#     left_index += 1
#   end
  
#   (n / 2 + 1).times do
#     print_row(right_index, left_index, n)
#     right_index += 1
#     left_index -= 1
#   end
# end

# diamond(9)

# 6 --------------------------------------------------------------------------------------------------------------
# Stack Machine Interpretation

def minilang(commands)
register = 0
stack = []
commands.split(' ').each do |input|
  case input 
  when 'PUSH'  then stack << register
  when 'ADD'   then register += stack.pop
  when 'SUB'   then register -= stack.pop
  when 'MULT'  then register *= stack.pop
  when 'DIV'   then register /= stack.pop
  when 'MOD'   then register %= stack.pop
  when 'POP'   then register = stack.pop
  when 'PRINT' then puts register
  else              register = input.to_i
  end
end

end

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')


# need to convert integer and symbols to word inputs for minilang to process
# create a hash of all the commands and their symbol equivalent
# need to convert the integer symbol input to a string
# consider order of operations, when converting convert the inner brackets first into the word input
# split the input input 