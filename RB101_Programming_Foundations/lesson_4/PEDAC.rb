# input: string
# output: array substrings

# rules:
#     Explicit requirements:
#       - return every sub string from a given string that is a palindrome
#       - palidromes are case sensitive
#     
def substrings(str)
  result = []
  start_substring_inx = 0
  end_substring_inx = start_substring_inx + 1
  loop do
    break if start_substring_inx == str.size
    start_substring_inx += 1
  end
  p start_substring_inx
  p end_substring_inx
end

substrings("abc")