require "rice"

RSpec.describe Rice do
  let(:rice) { Rice.new }

  describe "#water!" do
    it "should add 5 grains to the water" do
      expect(rice.water!).to eq(5)
    end
  end

  describe "#transplant!" do
    it "should add 10 more grains when transplant" do
      rice.water!
      expect(rice.transplant!).to eq(15)
    end
  end

  describe "#ripe?" do
    it "returns true when the grains is equal or above 15" do
      rice.water!
      rice.transplant!
      expect(rice.ripe?).to be true
    end
  end

end
