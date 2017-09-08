require('rspec')
require('anagrams')

describe('title_case') do
  it("checks if two words are anagrams") do
    anagram = Anagram.new(["ruby", "bury"], "ruby", "bury")
    expect(anagram.check()).to eq(true)
  end

  it("Accounts for case insensitivity") do
    anagram = Anagram.new(["Ruby", "Bury"], "Ruby", "Bury")
    expect(anagram.check()).to eq(true)
  end

  it("checks if two words are palindromes") do
    anagram = Anagram.new(["noon", "noon"], "noon", "noon")
    expect(anagram.palindrome_check()).to eq(true)
  end

  it("checks if inputted words contain vowels") do
    anagram = Anagram.new(["tp", "rdl"], "tp", "rdl")
    expect(anagram.is_word()).to eq(false)
  end

  it("checks if words are antigrams") do
    anagram = Anagram.new(["toe", "ply"], "toe", "ply")
    expect(anagram.antigram()).to eq(true)
  end

  it("checks multiple word phrases with punctuation for anagrams") do
    anagram = Anagram.new(["Aaron. is cool!", "looc is noraa"], "Aaron. is cool!", "looc is noraa")
    expect(anagram.check()).to eq(true)
  end

  it("checks multiple word phrases with punctuation for antigrams") do
    anagram = Anagram.new(["Aaron. is cool!", "looc is noraa"], "Aaron. is cool!", "looc is noraa")
    expect(anagram.check()).to eq(true)
  end
end
