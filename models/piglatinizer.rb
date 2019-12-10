class PigLatinizer
    attr_reader :text
    def initialize()
    end
    def piglatinize(text)
        newString = ""
        stringList = text.split(" ")
        vowels = ["a","e","i","o","u","A","E","I","O","U"]
        stringList.map do |string|
            if vowels.include? string[0]
                newString += string+"way"+" "
            else
                place = 0
                string.split("").each do |char|
                    if !vowels.include? char
                        place+=1
                    else
                        break
                    end
                end
                newString += string[place..]+string[0..place-1]+"ay"+" "
            end
        end
        newString.strip
    end
end
