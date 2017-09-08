# require('pry')
class Anagram
  def initialize(word_array, phrase_input1, phrase_input2)
    @phrase1 = word_array[0].upcase.gsub(/[^0-9A-Za-z]/, '')
    @phrase2 = word_array[1].upcase.gsub(/[^0-9A-Za-z]/, '')
    @phrase_input1 = phrase_input1
    @phrase_input2 = phrase_input2
  end

  def anagram_check()
    if @phrase1.chars.sort === @phrase2.chars.sort
      return true
    else
      return false
    end
  end

  def palindrome_check()
    phrase = @phrase1 + @phrase2
    if phrase === phrase.reverse()
      return true
    else
      return false
    end
  end

  def is_word()
    anagram_check_words = @phrase_input1.upcase.split(" ") + @phrase_input2.upcase.split(" ")
    return_value = nil
    anagram_check_words.each do |word|
      if word.include? "A" or word.include? "E" or word.include? "I" or word.include? "O" or word.include? "U" or word.include? "Y"
        return_value = true
      else
        return_value = false
      end
      if return_value === false
        return false
      end
    end
    return return_value
  end

  def antigram_check()
    phrase1_array = @phrase1.upcase.gsub(/[^0-9A-Za-z]/, '').split("")
    return_value = nil
    phrase1_array.each do |letter|
      if @phrase2.include? letter
        return false
      else
        return_value = true
      end
    end
    return return_value
  end
end
