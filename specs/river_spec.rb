require 'minitest/autorun'
require 'minitest/rg'

require_relative '../river'
require_relative '../fish'

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")

    @river1 = River.new("Amazon", [@fish1, @fish2])

  end

  def test_count_fish_in_river()
    assert_equal(2, @river1.count())
  end

  def test_remove_fish()
    @river1.remove()
    assert_equal(1, @river1.count())
  end



end
