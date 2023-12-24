require_relative "day_6"

RSpec.describe Day6 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day6.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
