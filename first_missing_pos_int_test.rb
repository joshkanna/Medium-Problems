require 'minitest/autorun'
require_relative 'first_missing_pos_int'

class FirstMissingPosIntTest < Minitest::Test
  def test_example_one
    assert_equal 2, first_missing_pos_int([3, 4, -1, 1])
  end

  def test_example_two
    assert_equal 3, first_missing_pos_int([1, 2, 0] )
  end

  def test_large_numbers
    assert_equal 1, first_missing_pos_int([112, 113, 114])
  end

  def test_neg_numbers
    assert_equal 1, first_missing_pos_int([-2, -1, -3])
  end

end