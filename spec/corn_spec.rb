require "corn"

RSpec.describe Corn do
  let(:corn) { Corn.new }

  describe "#water!" do
    it "it should add 10 grains to the corn" do
      expect(corn.water!).to eq(10)
    end
  end

  describe "#ripe?" do
    it "returns false when the grains is below 15" do
      expect(corn.ripe?).to be false
    end
  end
end
