class Rice
  attr_reader :grains
  def initialize
    @grains = 0
  end

  def water!
    @grains += 5
  end

  def transplant!
    @grains += 10
  end

  def ripe?
    @grains >= 15
  end
end
