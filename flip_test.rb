require 'minitest/autorun'
require_relative 'flip'

class FlipTest < Minitest::Test
  def test_example
    assert_equal 2, flip("xyxxxyxyy")
  end

  def test_example_4_changes
    assert_equal 4, flip("yxyxxxyxyxyyy")
  end

  def test_example_1_change
    assert_equal 1, flip("yxxxxyyyyyyyy")
  end
end