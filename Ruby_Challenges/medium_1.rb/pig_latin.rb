# Pig Latin
class PigLatin
  TWO_CONSONANTS = ["ch", "qu", "th"]
  THREE_CONSONANTS = ["thr", "sch"]

  def self.translate(str)
    pig_latin = str.split.map do |word|
      case
      when word[0].match(/[^aeiouAEIOU]/) && word[1..2] == "qu"
        word[3..-1] + word[0..2] + "ay"
      when THREE_CONSONANTS.include?(word[0..2])
        word[3..-1] + word[0..2] + "ay"
      when TWO_CONSONANTS.include?(word[0..1])
        word[2..-1] + word[0..1] + "ay"
      when word[0] == "y" && word[1].match(/[aeiouAEIOU]/)
        word[1..-1] + word[0] + "ay"
      when word[0] == "y" || word[0] == "x" && word[1].match(/[^aeiouAEIOU]/)
        word + "ay"
      when word[0].match(/[^aeiouAEIOU]/)
        word[1..-1] + word[0] + "ay"
      when word[0].match(/[aeiouAEIOU]/)
        word + "ay"
      end
    end
    pig_latin.join(' ')
  end
end
