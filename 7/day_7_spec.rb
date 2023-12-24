require_relative "day_7"

RSpec.describe Day7 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day7.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
