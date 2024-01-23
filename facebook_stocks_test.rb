require 'minitest/autorun'
require_relative 'facebook_stocks'

class FacebookStocksTest < Minitest::Test
  def test_example_one
    assert_equal 5, facebook_stocks([9, 11, 8, 5, 7, 10])
  end

  def test_ascending_order
    assert_equal 4, facebook_stocks([1, 2, 3, 4, 5])
  end

  def test_descending_order
    assert_equal 0, facebook_stocks([5, 4, 3, 2, 1])
  end

  def test_constant_prices
    assert_equal 0, facebook_stocks([10, 10, 10, 10, 10])
  end

  def test_empty_array
    assert_equal 0, facebook_stocks([])
  end
end