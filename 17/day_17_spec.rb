require_relative "day_17"

RSpec.describe Day17 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day17.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
