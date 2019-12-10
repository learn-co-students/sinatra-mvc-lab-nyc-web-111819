require 'pry'
class PigLatinizer

  attr_reader :text 
  
  # def initialize(words)
  #   @text = words
  # end

  def piglatinize(words)
    @text = words
    final = []
    vowels =["a", "e", "i", "o", "u"]
    @text = text.split(" ")
    @text.each do |word|
      if ["A", "E", "I", "O", "U"].include?(word[0])
        final << word + "way"
      elsif vowels.include?(word[0])
        final << word + "way"
        # binding.pry
      # elsif /[[:upper:]]/.match(word[0])
      #   if vowels.include?(word[1])
      #     final << word[1..-1].capitalize + word[0].downcase + "ay"
      #   elsif vowels.include?(word[2])
      #     final << word[2..-1].capitalize + word[0..1].downcase + "ay"
      #   elsif vowels.include?(word[3])
      #     final << word[3..-1].capitalize + word[0..2].downcase + "ay"
      #   end
      else
        if vowels.include?(word[1])
          final << word[1..-1] + word[0] + "ay"
        elsif vowels.include?(word[2])
          final << word[2..-1] + word[0..1] + "ay"
        elsif vowels.include?(word[3])
          final << word[3..-1] + word[0..2] + "ay"
        end
      end
    end
    final = final.join(" ")
    final
  end

end