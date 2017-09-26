class Bear

  def initialize(name, stomach)
    @name = name
    @stomach = stomach
  end

  def name()
    return @name
  end

  def food_count()
    return @stomach.length
  end

  def take_fish(river)
    fish = river.remove()
    @stomach << fish
  end

  def roar()
    return "ROAR!"
  end



end
