require('rspec')
require('anagrams')

describe('title_case') do
  it("checks if two words are anagrams") do
    anagram = Anagram.new()
    expect(anagram.check(["ruby", "bury"])).to eq(true)
  end

  it("Account for case insensitivity") do
    anagram = Anagram.new()
    expect(anagram.check(["Ruby", "Bury"])).to eq(true)
  end
end
