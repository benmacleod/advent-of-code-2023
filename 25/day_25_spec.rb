require_relative "day_25"

RSpec.describe Day25 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day25.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
