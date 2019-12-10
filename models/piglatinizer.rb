class PigLatinizer

    def piglatinize_word(word)
        if word[0].downcase.scan(/[aeiou]/)[0] != nil
            "#{word}way"
        else
            consonants = []
            consonants << word[0]
            if word[1].downcase.scan(/[aeiou]/)[0] == nil
                consonants << word[1]
                if word[2].downcase.scan(/[aeiou]/)[0] == nil
                    consonants << word[2]
                end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end

    def piglatinize(text)
        words = text.split(" ")
        pig_words = words.map{|word| piglatinize_word(word)}
        pig_sentence = pig_words.join(" ")
        pig_sentence
    end

end