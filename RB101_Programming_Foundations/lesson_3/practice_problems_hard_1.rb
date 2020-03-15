# question 1
# returns nil as evalutes to false, is initialized as a local variable
# if false
#   greeting = "hello world"
# end

# p greeting

# question 2
# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting # => "hi there"
# puts greetings # => { a: 'hi there' }

# question 3 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# A) 
# one is => two
# two is => three
# three is => one

# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is #{one}"
# puts "two is #{two}"
# puts "three is #{three}"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#b)

# one is one
# two is two
# three is three

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# one is: "two"
# two is: "three"
# three is: "one"
# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# question 4
# if num of dots == 4 is valid
# if false what?

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   return false unless dot_separated_words.size == 4 # only want to return if the input is valid with 4 sections
  
#   while dot_separated_words.size > 0  do
#     word = dot_separated_ip_words.pop
#     return false unless is_an_ip_number?(word)
#   end
  
#   true
# end  