#!/usr/bin/ruby
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
    vowel_array = ['A', 'E', 'I', 'O', 'U', 'Y']
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

puts "Please enter the first word"
phrase1_input = gets.chomp
puts "Please enter the second word"
phrase2_input = gets.chomp
anagram = Anagram.new([phrase1_input, phrase2_input], phrase1_input, phrase2_input)

if anagram.is_word()
  if anagram.anagram_check()
    puts "Hooray! It's an anagram!"
    if anagram.palindrome_check()
      puts "Woah, it's also a palindrome."
    end
    else
      puts "Doh! No anagram here."
      if anagram.antigram_check()
        puts "But you do, indeed, have an antigram!"
      end
    end
  else
  puts "Please enter real words!"
  end
end
