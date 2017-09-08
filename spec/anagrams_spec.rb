require('rspec')
require('anagrams')

describe('title_case') do
  it("checks if two words are anagrams") do
    anagram = Anagram.new(["ruby", "bury"], "ruby", "bury")
    expect(anagram.check()).to eq(true)
  end

  it("Accounts for case insensitivity") do
    anagram = Anagram.new()
    expect(anagram.check(["Ruby", "Bury"])).to eq(true)
  end

  it("checks if two words are palindromes") do
    anagram = Anagram.new()
    expect(anagram.palindrome_check(["noon", "noon"])).to eq(true)
  end

  it("checks if inputted words contain vowels") do
    anagram = Anagram.new()
    expect(anagram.is_word("toe")).to eq(true)
  end

  it("checks if words are antigrams") do
    anagram = Anagram.new()
    expect(anagram.antigram(["toe", "ply"])).to eq(true)
  end

  it("checks multiple word phrases with punctuation for anagrams") do
    anagram = Anagram.new()
    expect(anagram.check(["Aaron. is cool!", "looc is noraa"])).to eq(true)
  end

  it("checks multiple word phrases with punctuation for antigrams") do
    anagram = Anagram.new()
    expect(anagram.check(["Aaron. is cool!", "looc is noraa"])).to eq(true)
  end
end
