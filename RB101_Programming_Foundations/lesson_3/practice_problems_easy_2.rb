# question 1
#ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.fetch("Spot")
# p ages.slice("Spot")
# p ages["Spot"]
# p ages.key?("Spot")
# p ages.include?("Spot")
# p ages.member?("Spot")


# question 2
# munsters_description = "The Munsters are creepy in a good way."

# puts munsters_description.swapcase
# puts munsters_description.capitalize
# puts munsters_description.downcase
# puts munsters_description.upcase

# question 3
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# p ages.merge!(additional_ages)

# question 4
# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.match?('Dino')

# question 5
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# puts flintstones

# question 6
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.push("Dino")
# flintstones << "Dino"
# puts flintstones

# question 7
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino" << "Hoppy"
# flintstones.concat(["Dino", "Hoppy"])
# flintstones.push("Dino", "Hoppy")
# flintstones.concat(%w(Dino Hoppy))
# puts flintstones

# question 8
# advice = "Few things in life are as important as house training your pet dinosaur."
# puts advice.slice!(0, advice.index('house'))
# puts advice

# question 9
# statement = "The Flintstones Rock!"
# total = 0
# statement.each_char { |t| total += 1 if t == 't' }
# puts statement.count "t"

# question 10
# title = "Flintstone Family Members"
# puts title.center(40)