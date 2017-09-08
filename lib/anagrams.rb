class Anagram
  def check(word_array)
    word1 = word_array[0]
    word2 = word_array[1]
    if word1.chars.sort === word2.chars.sort
      return true
    else
      return false
    end
  end
end
