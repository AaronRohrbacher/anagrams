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
end

anagram_check = Anagram.new()
puts "Please enter the first word"
word1_input = gets.chomp
puts "Please enter the second word"
word2_input = gets.chomp
complete_input = [word1_input, word2_input]
if anagram_check.check(complete_input)
  puts "Hooray! It's an anagram!"
  if anagram_check.palindrome_check(complete_input)
    puts "Woah, man- it's also a palindrome."
  end
else
  puts "Dah, man! No anagram here."
end
