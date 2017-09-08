#!/usr/bin/ruby
# require('pry')
class Anagram
  def initialize(word_array, word_input1, word_input2)
    @word1 = word_array[0].upcase.gsub(/[^0-9A-Za-z]/, '')
    @word2 = word_array[1].upcase.gsub(/[^0-9A-Za-z]/, '')
    @word_input1 = word_input1
    @word_input2 = word_input2
  end

  def check()
    if @word1.chars.sort === @word2.chars.sort
      return true
    else
      return false
    end
  end

  def palindrome_check()
    phrase = @word1 + @word2
    if phrase === phrase.reverse()
      return true
    else
      return false
    end
  end

  def is_word()
    vowel_array = ['A', 'E', 'I', 'O', 'U', 'Y']
    check_words = @word_input1.upcase.split(" ") + @word_input2.upcase.split(" ")
    return_value = nil
    check_words.each do |word|
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

  def antigram()
    word1_array = @word1.upcase.gsub(/[^0-9A-Za-z]/, '').split("")
    return_value = nil
    word1_array.each do |letter|
      if @word2.include? letter
        return false
      else
        return_value = true
      end
    end
    return return_value
  end

puts "Please enter the first word"
word1_input = gets.chomp
puts "Please enter the second word"
word2_input = gets.chomp
anagram_check = Anagram.new([word1_input, word2_input], word1_input, word2_input)

if anagram_check.is_word()
  if anagram_check.check()
    puts "Hooray! It's an anagram!"
    if anagram_check.palindrome_check()
      puts "Woah, it's also a palindrome."
    end
    else
      puts "Doh! No anagram here."
      if anagram_check.antigram()
        puts "But you do, indeed, have an antigram!"
      end
    end
  else
  puts "Please enter real words!"
  end
end
