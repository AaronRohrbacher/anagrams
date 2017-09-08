#!/usr/bin/ruby
require('./anagrams')
puts "Please enter the first word or phrase"
phrase1_input = gets.chomp
puts "Please enter the second word or phrase"
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
