# Pig Latin
# class PigLatin
#   def self.translate(str)
#     ending = "ay"
#     pig_latin = str.split.map do |word|
#       case
#       when word[0].match(/[^aeiou]/) && word[1..2].match(/(qu)/)
#         word[3..-1] + word[0..2] + ending
#       when word[0..2].match(/(thr|sch)/)
#         word[3..-1] + word[0..2] + ending
#       when word[0..1].match(/(qu|ch|th)/)
#         word[2..-1] + word[0..1] + ending
#       when (word[0] == "y" || word[0] == "x") && word[1].match(/[aeiou]/)
#         word[1..-1] + word[0] + ending
#       when (word[0] == "y" || word[0] == "x") && word[1].match(/[^aeiou]/)
#         word + ending
#       when word[0].match(/[^aeiou]/)
#         word[1..-1] + word[0] + ending
#       when word[0].match(/[aeiou]/)
#         word + ending
#       end
#     end

#     pig_latin.join(' ')
#   end
# end

class PigLatin
  def self.translate(words)
    latin = words.split(' ').map do |word|
      if begins_with_vowel_sound?(word) || more_than_one_consonant?(word)
        word + 'ay'
      else
        consonant_sound, rest_of_word = parse_for_consonant(word)
        rest_of_word + consonant_sound + "ay"
      end
    end
    latin.join(' ')
  end

  def self.more_than_one_consonant?(word)
    return false if /(qu|ch|th|thr|sch)/.match(word)
    /([^aeiou]*)/.match(word)[1].length >= 2
  end

  def self.begins_with_vowel_sound?(word)
    word[0].match(/[aeiou]/)
  end

  def self.parse_for_consonant(word)
    multiple_consonants = /([^aeiou]qu|qu|sch|thr|th|ch|[^aeiou])(.+)/
    start_of_word = multiple_consonants.match(word)[1]
    rest_of_word = multiple_consonants.match(word)[2]
    [start_of_word, rest_of_word]
  end
end
