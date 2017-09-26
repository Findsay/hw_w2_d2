class River

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def count()
    return @fish.length
  end

  def remove()
    @fish.shift
  end

end
