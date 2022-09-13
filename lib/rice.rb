class Rice
  attr_reader :grains
  def initialize
    @grains = 0
  end

  def water!
    @grains += 5
  end
end
