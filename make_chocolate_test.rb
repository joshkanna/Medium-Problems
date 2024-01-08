require 'minitest/autorun'
require_relative 'make_chocolate'

class MakeChocolateTest < Minitest::Test
  def test_example_one
    assert_equal 4, make_chocolate(4, 1, 9)
  end

  def test_example_two
    assert_equal -1, make_chocolate(4, 1, 10)
  end

  def test_example_three
    assert_equal 2, make_chocolate(4, 1, 7)
  end

  def test_two_big_bars_goal_of_nine
    assert_equal -1, make_chocolate(4, 2, 9)
  end

  def test_two_big_bars_possible_combo
    assert_equal 0, make_chocolate(4, 2, 10)
  end
end