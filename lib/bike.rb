class Bike
  attr_accessor :works
  def initialize(works = true)
    @works = works
  end

  def working?
    works
  end
end