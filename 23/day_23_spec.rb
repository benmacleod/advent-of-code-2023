require_relative "day_23"

RSpec.describe Day23 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day23.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
