require_relative "day_18"

RSpec.describe Day18 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day18.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
