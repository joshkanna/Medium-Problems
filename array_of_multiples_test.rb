require 'minitest/autorun'
require_relative 'array_of_multiples'

class ArrayOfMultiplesTest < Minitest::Test
  def test_example_one
    assert_equal [7, 14, 21, 28, 35], array_of_multiples(7, 5)
  end

  def test_example_two
    assert_equal [12, 24, 36, 48, 60, 72, 84, 96, 108, 120], array_of_multiples(12, 10)
  end
  
  def test_example_three
    assert_equal [17, 34, 51, 68, 85, 102], array_of_multiples(17, 6)
  end

  def test_zero_num
    assert_equal  [0, 0, 0], array_of_multiples(0, 3)
  end

  def test_zero_length
    assert_equal [], array_of_multiples(7, 0)
  end
end