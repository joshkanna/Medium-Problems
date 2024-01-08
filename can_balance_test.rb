require 'minitest/autorun'
require_relative 'can_balance'

class CanBalanceTest < Minitest::Test
  def test_example_one
    assert can_balance([1, 1, 1, 2, 1])
  end

  def test_example_two
    refute can_balance([2, 1, 1, 2, 1])
  end

  def test_example_three
    assert can_balance([10, 10])
  end

  def test_empty_array
    assert_equal(-1, can_balance([]))
  end
end
