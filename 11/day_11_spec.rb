require_relative "day_11"

RSpec.describe Day11 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day11.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
