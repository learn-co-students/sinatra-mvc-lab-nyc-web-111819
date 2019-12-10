
class PigLatinizer

  attr_accessor :text

  #   can create a new instance of a class (FAILED - 1)
  def initialize
  end

  # piglatinizes an individual word (FAILED - 2)
  def piglatinize_word(word)
    case word.chr
      
      # case for vowels
    when /[aeiouAEIOU]/
      word + "way"
      
      # case for non vowels
    else
      arr = word.split("")
      counter = 1
      until (/[aeiouAEIOU]/.match?(arr.first) || counter == arr.length)
        # binding.pry
        arr << arr.shift  
        counter += 1
      end
      arr.join + "ay"
      # first_vowel_index = word.index(/[aeiou]/)
    end
  end

  # has a method splits the sentence to piglatinize each word (FAILED - 3)
  def piglatinize(text)
    @text = text
    # split sentence into array of words
    words = @text.split
    # run piglatinize_word on each
    pig_words = words.map do |word|
      piglatinize_word(word)
    end
    # binding.pry
    pig_words.join(' ')
  end
  
 

end