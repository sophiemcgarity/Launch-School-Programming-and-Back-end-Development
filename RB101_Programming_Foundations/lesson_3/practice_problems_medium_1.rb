# question 1
# statement = "The Flintstones Rock!"

# 10.times { puts statement = " " + statement}
# 10.times { |number| puts (" " * number) + "The Flintstones Rock!"}


# question 2
# puts "the value of 40 + 2 is " + (40 + 2) throws an error as you can't string concatinate with integers
# puts "the value of 40 + 2 is #{40 + 2}" # using string interpolation
# puts "the value of 40 + 2 is " + (40 + 2).to_s # converted to string

# question 3
# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   factors
# end

# puts factors(10)

# purpose of number % divisor == 0 compares the number with the divisor and outputs true if there is no remainder
# purpose of factors, before end - this the new factors array, the values are input to factors, whithout this then factors would output [] when called

# question 4

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# # << mutates the buffer

# def rolling_buffer2(buffer, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# buffer variable is reassigned
# requires an input array, local variable that isnt defined

# question 5
# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, 15)
# puts "result is #{result}"

# question 6
# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p new_answer # 50
# p answer - 8 # 34

# question 7
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)
# puts munsters

# will mess with the data, the hash key is accessible with ["age"] and can be changed

# question 8
# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
            