require "crop"
require "corn"

RSpec.describe Crop do
  let(:crop) { Crop.new }

  describe "#grains" do
    it "should have proper getter and/or setter" do
      expect(crop).to respond_to :grains
      expect(crop).not_to respond_to(:grains=)
    end
  end

  describe "inheritance" do
    context "Corn" do
      it "it should inherit from crop" do
        expect(Corn.superclass).to eq(Crop)
      end

      it "should not duplicate the shared method ´Crop´ " do
        expect(Corn.instance_methods(false)).not_to include(:initialize)
        expect(Corn.instance_methods(false)).not_to include(:ripe?)
      end

      it "should define specific method" do
        expect(Corn.instance_methods(false)).to include(:water!)
      end

    end

  end
end
