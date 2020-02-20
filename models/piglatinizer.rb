class PigLatinizer

    def piglatinize(string)
       a = string.split(" ")
        #splits the string into individual words and puts them into an array
        #since a single word has no spaces our array will have one element
    b = a.map {|word| piglatinize_word(word)}
    #takes each word in our array and calls the piglatinize_word method on the word
    #then it maps each piglatinized word back into a second array called b
    b.join(" ")
    
    #join the words in the array  together with spaces using .join
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
    

end