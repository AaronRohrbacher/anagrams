#!/usr/bin/ruby
# require('pry')
class Anagram
  def check(word_array)
    word1 = word_array[0].upcase
    word2 = word_array[1].upcase
    if word1.chars.sort === word2.chars.sort
      return true
    else
      return false
    end
  end

  def palindrome_check(word_array)
    word1 = word_array[0].upcase
    word2 = word_array[1].upcase
    phrase = word1 + word2
    if phrase === phrase.reverse()
      return true
    else
      return false
    end
  end

  def is_word(word)
    word = word.upcase
    vowel_array = ['A', 'E', 'I', 'O', 'U', 'Y']
    return_value = nil
    vowel_array.each do |letter|
      if word.include? letter
        return true
      else
        return_value = false
      end
    end
    return return_value
  end

  def antigram(word_array)
    word1_array = word_array[0].upcase.split("")
    word2 = word_array[1].upcase
    return_value = nil
    word1_array.each do |letter|
      if word2.include? letter
        return false
      else
        return_value = true
      end
    end
    return return_value
  end

anagram_check = Anagram.new()
puts "Please enter the first word"
word1_input = gets.chomp
puts "Please enter the second word"
word2_input = gets.chomp

if (anagram_check.is_word(word1_input)) and (anagram_check.is_word(word2_input))
  complete_input = [word1_input, word2_input]
  if anagram_check.check(complete_input)
    puts "Hooray! It's an anagram!"
    if anagram_check.palindrome_check(complete_input)
      puts "Woah, it's also a palindrome."
    end
    else
      puts "Doh! No anagram here."
      if anagram_check.antigram([word1_input, word2_input])
        puts "But you do, indeed, have an antigram!"
      end
    end
  else
  puts "Please enter real words!"
  end
end
