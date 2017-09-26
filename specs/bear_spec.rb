require 'minitest/autorun'
require 'minitest/rg'

require_relative '../bear'
require_relative '../river'
require_relative '../fish'


class BearTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")

    @river1 = River.new("Amazon", [@fish1, @fish2])

    @bear1 = Bear.new("Yogi", [])

  end

  def test_name()
    assert_equal("Yogi",@bear1.name())
  end

  def test_take_fish()
    @bear1.take_fish(@river1)
    assert_equal(1, @river1.count())
    assert_equal(1, @bear1.food_count())
  end

  def test_roar()
    assert_equal("ROAR!", @bear1.roar)
  end













end
