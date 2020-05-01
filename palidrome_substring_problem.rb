# write a method that will return a substring based on a specified indices
def substring(string, num1, num2 = 0)
  return string[num1..num2] unless num2 == 0
  string[num1]
end

# write a method that will return all the substrings in a string. No 1 letter words.
def substrings(string)
  array = []
  
  string.chars.each_with_index do |letter, index|
    position = index + 1
    
    (string.size - position).times do |n|
      array << substring(string, index, (index + n + 1))
    end
    
  end
  array
end

# write a method that finds all palidromes in a string.
def palidromes(string)
  substrings(string).select { |str| str == str.reverse }
end

# write a method that is the largest palidrome within a string
def largest_palidrome(string)
  results = palidromes(string)
  longest = results[0]
  
  results.each do |str|
    longest = str if str.length > longest.length
  end
  
  longest
end

p largest_palidrome("ppop")
p largest_palidrome("carac")