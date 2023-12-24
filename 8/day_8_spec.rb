require_relative "day_8"

RSpec.describe Day8 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day8.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
