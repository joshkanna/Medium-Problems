require 'minitest/autorun'
require_relative 'visual_bar_chart'

class LargestRectangleTest < Minitest::Test
  def test_example_one
    assert_equal 6, largest_rectangle([1, 3, 2, 5])
  end
  def test_3x3
    assert_equal 9, largest_rectangle([3, 3, 5, 1])
  end

  def test_2x4
    assert_equal 8, largest_rectangle([4, 2, 3, 4])
  end
end