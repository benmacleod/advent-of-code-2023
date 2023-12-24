require_relative "day_21"

RSpec.describe Day21 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day21.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
