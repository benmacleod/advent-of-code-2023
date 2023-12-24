require_relative "day_15"

RSpec.describe Day15 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day15.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
