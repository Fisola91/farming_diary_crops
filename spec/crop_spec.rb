require "crop"
require "corn"
require "rice"

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

    context "Rice" do
      it "it should inherit from crop" do
        expect(Rice.superclass).to eq(Crop)
      end

      it "should not duplicate the shared method ´Crop´ " do
        expect(Rice.instance_methods(false)).not_to include(:initialize)
        expect(Rice.instance_methods(false)).not_to include(:ripe?)
      end

      it "should define specific method" do
        expect(Rice.instance_methods(false)).to include(:water!)
        expect(Rice.instance_methods(false)).to include(:transplant!)
      end

    end

  end
end
