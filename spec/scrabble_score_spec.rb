require('rspec')
require('scrabble_score')

describe('#scrabble_score') do
  it('returns a scrabble score for a letter') do
    word = Word.new("A")
    expect(word.scrabble_score()).to(eq(1))
  end
  it('returns 1 point for letters "A", "E", "I", "O", "U", "L", "N", "R", "S", "T"') do
    word = Word.new("ANT")
    expect(word.scrabble_score()).to(eq(3))
  end
  it('returns 2 points for letters "D", "G"') do
    word = Word.new("DOG")
    expect(word.scrabble_score()).to(eq(5))
  end
  it('returns 3 points for letters "B", "C", "M", "P"') do
    word = Word.new("CAMP")
    expect(word.scrabble_score()).to(eq(10))
  end
  it('returns 4 points for letters "F", "H", "V", "W", "Y"') do
    word = Word.new("HIGHWAY")
    expect(word.scrabble_score()).to(eq(20))
  end
  it('returns 5 points for letters "K"') do
    word = Word.new("OK")
    expect(word.scrabble_score()).to(eq(6))
  end
  it('returns 8 points for letters "J", "X"') do
    word = Word.new("JOKE")
    expect(word.scrabble_score()).to(eq(15))
  end
  it('returns 10 points for letters "Q", "Z"') do
    word = Word.new("QUIZ")
    expect(word.scrabble_score()).to(eq(22))
  end
end
