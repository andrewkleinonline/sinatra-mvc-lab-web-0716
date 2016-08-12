class PigLatinizer

  attr_accessor :words, :latin

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.collect {|word| piglatinize(word) }.join(" ")
  end

  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
        word = word + "way"
    else
      vowel_index = word.index(/[aeiouAEIOU]/)
      word = word[vowel_index...word.length] + word[0...vowel_index] + "ay"
    end
  end

end
