require_relative "day_1"

RSpec.describe Day1 do
  describe ".get_number" do
    it "returns the first and last number combined where there are more than 2 numbers" do
      expect(Day1.get_number("xyz1a2b3xyz")).to eq(13)
    end

    it "returns the first and last number combined where there are only 2 numbers" do
      expect(Day1.get_number("xyz1a2bxyz")).to eq(12)
    end

    it "returns the first number repeated where there is only 1 number" do
      expect(Day1.get_number("xyz1axyz")).to eq(11)
    end
  end

  describe ".get_calibration" do
    it "sums the calibration values of the lines" do
      expect(Day1.get_calibration(<<~LINES.split("\n"))).to eq(142)
        1abc2
        pqr3stu8vwx
        a1b2c3d4e5f
        treb7uchet
      LINES
    end
  end
end
