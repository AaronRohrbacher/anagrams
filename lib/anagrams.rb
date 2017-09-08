#!/usr/bin/ruby
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

anagram_check = Anagram.new()
puts "Please enter the first word"
word1_input = gets.chomp
puts "Please enter the second word"
word2_input = gets.chomp
complete_input = [word1_input, word2_input]
if anagram_check.check(complete_input)
  puts "Hooray! It's an anagram!"
else
  puts "Dah, man! No anagram here."
end
