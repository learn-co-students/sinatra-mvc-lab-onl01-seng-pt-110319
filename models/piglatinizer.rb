class PigLatinizer

    def piglatinize(string)
        array = string.split(" ")
        maping = array.map do |word| 
            piglatinize_word(word)
        end
        maping.join(" ")
    end

    def piglatinize_word(word)
        consonants = []
   
        if vowels.include?(word[0])
            "#{word}way"
        elsif vowels.include?(word[1])
            consonants << word[0]
            word[consonants.length..] + "#{word[0]}ay"
        elsif vowels.include?(word[2])
            consonants << word[0]
            consonants << word[1]
            word[consonants.length..] + "#{word[0]}#{word[1]}ay"
        else vowels.include?(word[3])
            consonants << word[0]
            consonants << word[1]
            consonants << word[2]
            word[consonants.length..] + "#{word[0]}#{word[1]}#{word[2]}ay"
        end
    end


    def vowels
        %w(a A e E i I o O u U)
    end

end
