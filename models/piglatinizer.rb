
class PigLatinizer

  attr_accessor :text

  #   can create a new instance of a class (FAILED - 1)
  def initialize
  end

  # piglatinizes an individual word (FAILED - 2)
  def self.piglatinize_word(word)
    case word.chr
    
    # case for vowels
    when /[aeiou]/
      word + "way"
    
    # case for non vowels
    else
      arr = word.split("")
      until arr.first == /[aeiou]/
        arr << arr.shift  
      end
      arr.join + "ay"
      # first_vowel_index = word.index(/[aeiou]/)
    end
  end

  # has a method splits the sentence to piglatinize each word (FAILED - 3)
  def piglatinize
    # split sentence into array of words
    words = @text.split
    # run piglatinize_word on each
    pig_words = words.map do |word|
      word.piglatinize
    end
    pig_words.join(' ')
  end
  
  test = piglatinize_word("James")
  binding.pry

end