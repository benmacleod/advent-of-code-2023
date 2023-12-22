require_relative "day_4"

RSpec.describe Day4 do
  let(:lines) { DATA.split("\n") }

  Card = Struct.new(:winners, :ours)

  describe ".parse_card" do
    it "parses the card input correctly" do
      expect(Day4.parse_card(lines[0])).to eq(
        Day4::Card.new([41, 48, 83, 86, 17], [83, 86, 6, 31, 17, 9, 48, 53])
      )
    end
  end

  describe ".score_card" do
    it "scores the card correctly for one or more winners" do
      expect(Day4.score_card(lines[0])).to eq(8)
      expect(Day4.score_card(lines[3])).to eq(1)
    end

    it "scores the card correctly for no winners" do
      expect(Day4.score_card(lines[-1])).to eq(0)
    end
  end

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day4.get_result(lines)).to eq(13)
    end
  end
end

DATA = <<~CARDS
Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53
Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19
Card 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1
Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83
Card 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36
Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11
CARDS
