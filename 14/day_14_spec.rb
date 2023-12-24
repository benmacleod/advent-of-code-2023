require_relative "day_14"

RSpec.describe Day14 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day14.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
