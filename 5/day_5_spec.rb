require_relative "day_5"

RSpec.describe Day5 do
  let(:lines) { DATA.split("\n") }
  let(:almanac) do
    Day5::Almanac.new(
      [79, 14, 55, 13],
      [
        # seed to soil
        [Day5::Range.new(50, 97, 2), Day5::Range.new(98, 99, -48)],
        # soil to fertilizer
        [
          Day5::Range.new(0, 14, 39),
          Day5::Range.new(15, 51, -15),
          Day5::Range.new(52, 53, -15)
        ],
        # fertilizer to water
        [
          Day5::Range.new(0, 6, 42),
          Day5::Range.new(7, 10, 50),
          Day5::Range.new(11, 52, -11),
          Day5::Range.new(53, 60, -4)
        ],
        # water to light
        [Day5::Range.new(18, 24, 70), Day5::Range.new(25, 94, -7)],
        # light to temperature
        [
          Day5::Range.new(45, 63, 36),
          Day5::Range.new(64, 76, 4),
          Day5::Range.new(77, 99, -32)
        ],
        # temperature to humidity
        [Day5::Range.new(0, 68, 1), Day5::Range.new(69, 69, -69)],
        # humidity to location
        [Day5::Range.new(56, 92, 4), Day5::Range.new(93, 96, -37)]
      ]
    )
  end

  describe ".parse_almanac" do
    it "returns a set of seeds and a sorted sets of ranges" do
      parsed_almanac = Day5.parse_almanac(lines)
      expect(parsed_almanac.seed_map.count).to eq(7)
      expect(parsed_almanac).to eq(almanac)
    end
  end

  describe ".parse_range" do
    it "returns a range for a given line" do
      expect(Day5.parse_range("52 50 48")).to eq(Day5::Range.new(50, 97, 2))
      expect(Day5.parse_range("45 77 23")).to eq(Day5::Range.new(77, 99, -32))
    end
  end

  describe ".get_location" do
    it "returns the correct location for a seed in a given almanac" do
      expect(Day5.get_location(79, almanac)).to eq(82)
      expect(Day5.get_location(13, almanac)).to eq(35)
    end
  end

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day5.get_result(lines)).to eq(35)
    end
  end
end

DATA = <<~INPUT
seeds: 79 14 55 13

seed-to-soil map:
50 98 2
52 50 48

soil-to-fertilizer map:
0 15 37
37 52 2
39 0 15

fertilizer-to-water map:
49 53 8
0 11 42
42 0 7
57 7 4

water-to-light map:
88 18 7
18 25 70

light-to-temperature map:
45 77 23
81 45 19
68 64 13

temperature-to-humidity map:
0 69 1
1 0 69

humidity-to-location map:
60 56 37
56 93 4
INPUT
