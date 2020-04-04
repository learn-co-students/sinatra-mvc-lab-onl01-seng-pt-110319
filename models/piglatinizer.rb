class PigLatinizer
 

    def single_word_pig (word)
        if
        word.downcase.index(/[aeiou]/) == 0
            word + "way"
        else
            word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
        end

    end

    def piglatinize(phrase)
       
    phrase.split.collect {|word| single_word_pig(word)}.join(" ")

    end







end 