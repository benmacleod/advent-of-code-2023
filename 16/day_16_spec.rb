require_relative "day_16"

RSpec.describe Day16 do
  let(:lines) { DATA.split("\n") }

  describe ".get_result" do
    it "returns the correct result" do
      expect(Day16.get_result(lines)).to eq(true)
    end
  end
end

DATA = <<~INPUT
INPUT
