require 'pry'


class PigLatinizer
    #attr_reader :words
    
    # def initialize(words)
    #     @words = words
    # end

    def piglatinize(text)
        split_text = text.split(" ")
        text_array = split_text.map {|word| piglatinize_word(word)}
        text_array.join(" ")
    end


    def piglatinize_word(word)
        first_letter = word[0].downcase

        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"
        else
            consonants = []
            consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                consonants << word[1]
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                    consonants << word[2]
                end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end
#binding.pry
end