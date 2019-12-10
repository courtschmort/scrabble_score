class Word
  def initialize(word)
    @word = word
    @score = 0
  end

  def scrabble_score
    letter_values = {
      "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1,
      "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1,
      "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3,
      "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4,
      "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10,
      "Z" => 10 }
      letters = @word.upcase.chars
      letters.each do |letter|
        number = letter_values.fetch(letter)
        @score += number
      end
      @score
    end
  end

  # score = letters.map { |letter| (letter.tr("AEIOULNRST", "1").tr("DG", "2").tr("BCMP", "3").tr("FHVWY", "4").tr("K", "5").tr("JK", "8").sub("QZ", "10")).to_i}
  # score.reduce(:+)
