require('rspec')
require('anagrams')

describe('title_case') do
  it("checks if two words are anagrams") do
    anagram = Anagram.new()
    expect(anagram.check(["ruby", "bury"])).to eq(true)
  end

  it("Accounts for case insensitivity") do
    anagram = Anagram.new()
    expect(anagram.check(["Ruby", "Bury"])).to eq(true)
  end

  it("checks if two words are palindromes") do
    anagram = Anagram.new()
    expect(anagram.palindrome_check(["noon", "noon"])).to eq(true)
  end
end
