require_relative "day_20"

RSpec.describe Day20 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day20.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
