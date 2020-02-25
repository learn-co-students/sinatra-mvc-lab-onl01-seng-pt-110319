class PigLatinizer
  
  def piglatinize(string) 
    a = string.split(" ") #split a string into individual words
    b = a.map {|word| piglatinize_word(word)} #piglatinize each word using the piglatinize_word helper method
    b.join(" ") #join the words again into a string
end
  
  def piglatinize_word(word)
    first_letter = word[0].downcase #save the "first letter" in a local variable without manipulating the original word. Word[0] is getting the first character of the string. downcase is downcasing the first letter of the word 
    if ["a", "e", "i", "o", "u"].include?(first_letter) #owels in an array and checks to see if the first_letter is included in the vowel array.It  returns true or false
        "#{word}way" #Interpolates the word variable within a string.
    else #Look at your notes, for the details!
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
