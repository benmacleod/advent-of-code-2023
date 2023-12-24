require_relative "day_24"

RSpec.describe Day24 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day24.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
