require_relative "day_2"

RSpec.describe Day2 do
  let(:lines) { DATA.split "\n" }
  describe ".parse_game" do
    it "parses the game input correctly" do
      expect(
        Day2.parse_game(
          "Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green"
        )
      ).to eq(
        [
          Day2::Round.new(4, 0, 3),
          Day2::Round.new(1, 2, 6),
          Day2::Round.new(0, 2, 0)
        ]
      )
    end
  end

  describe ".game_is_possible?" do
    let(:game) do
      [
        Day2::Round.new(4, 0, 3),
        Day2::Round.new(1, 2, 6),
        Day2::Round.new(0, 2, 0)
      ]
    end

    it "returns true if the game is possible" do
      set = Day2::Set.new(4, 2, 6)

      expect(Day2.game_is_possible?(game, set)).to eq(true)
    end

    it "returns false if the game is not possible" do
      set = Day2::Set.new(4, 2, 5)

      expect(Day2.game_is_possible?(game, set)).to eq(false)
    end
  end

  describe ".sum_games" do
    it "sums the games correctly" do
      games = [
        [
          Day2::Round.new(4, 0, 3),
          Day2::Round.new(1, 2, 6),
          Day2::Round.new(0, 2, 0)
        ],
        [
          Day2::Round.new(4, 0, 3),
          Day2::Round.new(1, 2, 7),
          Day2::Round.new(0, 2, 0)
        ],
        [
          Day2::Round.new(4, 0, 3),
          Day2::Round.new(1, 2, 6),
          Day2::Round.new(0, 2, 0)
        ]
      ]

      expect(Day2.sum_games(games, Day2::Set.new(4, 2, 6))).to eq(4)
    end

    describe ".get_result" do
      it "returns the correct result" do
        expect(Day2.get_result(lines, Day2::Set.new(12, 13, 14))).to eq(8)
      end
    end
  end
end

DATA = <<~GAMES
Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green
GAMES
