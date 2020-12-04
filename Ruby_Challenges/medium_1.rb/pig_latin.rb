# Pig Latin
class PigLatin
  def self.translate(str)
  ending = "ay"
    pig_latin = str.split.map do |word|
      case
      when word[0].match(/[^aeiouAEIOU]/) && word[1..2].match(/(qu)/)
        word[3..-1] + word[0..2] + ending
      when word[0..2].match(/(thr|sch)/)
        word[3..-1] + word[0..2] + ending
      when word[0..1].match(/(qu|ch|th)/)
        word[2..-1] + word[0..1] + ending
      when word[0] == "y" && word[1].match(/[aeiouAEIOU]/)
        word[1..-1] + word[0] + ending
      when word[0] == "y" || word[0] == "x" && word[1].match(/[^aeiouAEIOU]/)
        word + ending
      when word[0].match(/[^aeiouAEIOU]/)
        word[1..-1] + word[0] + ending
      when word[0].match(/[aeiouAEIOU]/)
        word + ending
      end
    end
    pig_latin.join(' ')
  end
end
