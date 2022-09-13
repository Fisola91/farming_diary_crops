require "rice"

RSpec.describe Rice do
  let(:rice) { Rice.new }

  it "should add 5 grains to the water" do
    expect(rice.water!).to eq(5)
  end
end
