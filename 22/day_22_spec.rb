require_relative "day_22"

RSpec.describe Day22 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day22.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
