require_relative "day_12"

RSpec.describe Day12 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day12.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
