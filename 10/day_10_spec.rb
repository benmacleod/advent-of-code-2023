require_relative "day_10"

RSpec.describe Day10 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day10.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
