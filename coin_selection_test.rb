require 'minitest/autorun'
require_relative 'coin_selection'

class CoinSelectionTest < Minitest::Test
  def test_coin_selection
    assert_equal 5, coin_selection([3, 9, 1, 2])
    assert_equal 15, coin_selection([8, 15, 3, 7])
    assert_equal 19, coin_selection([2, 5, 1, 9, 3, 5])
    assert_equal 19, coin_selection([6, 3, 4, 2, 8, 9, 1])
    assert_equal 13, coin_selection([10, 1, 1, 5, 1, 1, 10])
    assert_equal 4, coin_selection([2, 2, 2])
  end
end
