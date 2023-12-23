require_relative "day_0"

RSpec.describe Day0 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day0.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
