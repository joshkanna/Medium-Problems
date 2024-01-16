require 'minitest/autorun'
require_relative 'game_24'

class Game24Test < Minitest::Test
  def test_example_one
    assert game_24([5, 2, 7, 8])
  end

  def test_losing_arr
    refute game_24([1, 2, 1, 2])
  end

  def test_negative_numbers # if numbers were allowed to be outside the range 1-9
    assert game_24([-5, 4, -2, 2])
  end
end