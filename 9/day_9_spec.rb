require_relative "day_9"

RSpec.describe Day9 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day9.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
