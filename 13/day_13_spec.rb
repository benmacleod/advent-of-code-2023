require_relative "day_13"

RSpec.describe Day13 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day13.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
