class PigLatinizer

  def piglatinize(string)
    a = string.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
  end

  def piglatinize_word(word)
    @vowels = /[aeiou]/
    if word[0].downcase.start_with?(@vowels)
       "#{word}way"
    elsif word[1].start_with?(@vowels) 
      word[1..-1] + word[0] + "ay"
    elsif word[2].start_with?(@vowels)
      word[2..-1] + word[0..1] + "ay"
    else
      word[3..-1] + word[0..2] + "ay"
    end
  end
end 