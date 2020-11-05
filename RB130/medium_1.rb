# 1 - Listening Device
# class Device
#   def initialize
#     @recordings = []
#   end

#   def record(recording)
#     @recordings << recording
#   end

#   def listen
#     return unless block_given?
#     recording = yield
#     record(recording)
#   end

#   def play
#     puts @recordings.last
#   end
# end

# listener = Device.new
# listener.listen { "Hello World!" }
# listener.listen
# listener.play # Outputs "Hello World!"

# 2 - Text Analyzer - Sandwich code
# class TextAnalyzer
#   def process
#     file = File.open("sample_text.txt", 'r')
#     yield(file.read)
#     file.close
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process { |file| puts "#{file.split(/^\n/).size} paragraphs" }
# analyzer.process { |file| puts "#{file.split(/\n/).size} lines"}
# analyzer.process { |file| puts "#{file.split(' ').size} words" }

# 3 - Passing Parameters Part 1
# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "Nice selection of food we have gathered!"
# end

# gather(items) {|items| puts items.join('-') }

# 4 - Passing Parameters Part 2
# def reassign(arr)
#   yield(arr)
# end

# birds = %w(raven finch hawk eagle)

# reassign(birds) do |_, _, *raptors |
#   p raptors
# end

# 5 - Passing Parameters Part 3
# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# gather(items) do | *first, second|
#   puts first.join(", ")
#   puts second
# end

# gather(items) do | first, *second, third|
#   puts first
#   puts second.join(', ')
#   puts third
# end

# gather(items) do | first, *second |
#   puts first
#   puts second.join(', ')
# end

# gather(items) do | first, second, third, fourth|
#   puts "#{[first, second, third].join(', ')} and #{fourth}"
# end

# 6 - Method to Proc
# def convert_to_base_8(n)
#   n.to_s(8).to_i
# end

# base8_proc = method(:convert_to_base_8).to_proc

# p [8, 10, 12, 14, 16, 33].map(&base8_proc)

# 7 - Bubble Sort with Blocks
# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       if block_given?
#         next if yield(array[index - 1], array[index])
#       else
#         next if array[index - 1] <= array[index]
#       end

#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end
#     break unless swapped
#   end
#   array
# end

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
# p /;'array == %w(alice bonnie Kim Pete rachel sue Tyler)

# Further Exploration
# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       if block_given?
#         next if yield(array[index - 1]) <= yield(array[index])
#       else
#         next if array[index - 1] <= array[index]
#       end

#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end
#     break unless swapped
#   end
#   array
# end


# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array) { |value| value.downcase }
# p array == %w(alice bonnie Kim Pete rachel sue Tyler)