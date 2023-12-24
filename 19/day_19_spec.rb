require_relative "day_19"

RSpec.describe Day19 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day19.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
