require_relative "day_3"

RSpec.describe Day3 do
  let(:data) { DATA.split }
  let(:numbers) do
    [
      Day3::Number.new(467, Day3::Coordinate.new(0, 0)),
      Day3::Number.new(114, Day3::Coordinate.new(0, 5)),
      Day3::Number.new(35, Day3::Coordinate.new(2, 2)),
      Day3::Number.new(633, Day3::Coordinate.new(2, 6)),
      Day3::Number.new(617, Day3::Coordinate.new(4, 0)),
      Day3::Number.new(58, Day3::Coordinate.new(5, 7)),
      Day3::Number.new(592, Day3::Coordinate.new(6, 2)),
      Day3::Number.new(755, Day3::Coordinate.new(7, 6)),
      Day3::Number.new(664, Day3::Coordinate.new(9, 1)),
      Day3::Number.new(598, Day3::Coordinate.new(9, 5))
    ]
  end

  let(:symbols) do
    [
      Day3::Symbol.new("*",Day3::Coordinate.new(1, 3)),
      Day3::Symbol.new("#",Day3::Coordinate.new(3, 6)),
      Day3::Symbol.new("*",Day3::Coordinate.new(4, 3)),
      Day3::Symbol.new("+",Day3::Coordinate.new(5, 5)),
      Day3::Symbol.new("$",Day3::Coordinate.new(8, 3)),
      Day3::Symbol.new("*",Day3::Coordinate.new(8, 5))
    ]
  end

  describe ".parse_map" do
    it "parses the map into a set of numbers with their extents and symbols with their coordinates" do
      map = Day3.parse_map(data)
      expect(map.numbers).to eq(numbers)
      expect(map.symbols).to eq(symbols)
    end
  end

  describe ".count_number" do
    it "counts the number if it has an adjacent symbol" do
      expect(Day3.count_number(numbers[0], symbols)).to eq(467)
      expect(Day3.count_number(numbers[2], symbols)).to eq(35)
      expect(Day3.count_number(numbers[-2], symbols)).to eq(664)
    end

    it "does not count the number if it does not have an adjacent symbol" do
      expect(Day3.count_number(numbers[1], symbols)).to eq(0)
      expect(Day3.count_number(numbers[5], symbols)).to eq(0)
    end
  end

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day3.get_result(data)).to eq(4361)
    end
  end
end

DATA = <<~MAP
467..114..
...*......
..35..633.
......#...
617*......
.....+.58.
..592.....
......755.
...$.*....
.664.598..
MAP
