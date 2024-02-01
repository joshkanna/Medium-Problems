require 'minitest/autorun'
require_relative 'create_largest_number'

class CreateLargestNumberTest < Minitest::Test
  def test_example_one
    assert_equal 77641510, create_largest_number([10, 7, 76, 415])
  end

  def test_numbers_with_same_first_digit
    assert_equal 77767574, create_largest_number([76, 77, 74, 75])
  end

  def test_numbers_with_same_second_digit
    assert_equal 8898882315, create_largest_number([23, 15, 888, 889])
  end
end