require 'minitest/autorun'
require_relative 'second_largest_number'

class SecondLargestNumber < Minitest::Test
  def test_example_one
    assert_equal 40, second_largest_number([10, 40, 30, 20, 50])
  end

  def test_example_two
    assert_equal 105, second_largest_number([25, 143, 89, 13, 105])
  end

  def test_example_three
    assert_equal 23, second_largest_number([54, 23, 11, 17, 10])
  end

  def test_repeated_nums
    assert_equal 5, second_largest_number([7, 3, 5, 7, 2, 1])
  end

  def test_one_element
    assert_equal nil, second_largest_number([9])
  end

  def test_empty_arr
    assert_nil second_largest_number([])
  end
end