require 'minitest/autorun'
require_relative 'minimum_number_of_rooms'

class MinRoomsTest < Minitest::Test
  def test_example_one
    assert_equal 2, min_rooms([[30, 75], [0, 50], [60, 150]])
  end

  def test_non_overlapping_intervals
    intervals = [[0, 30], [40, 70], [80, 120]]
    assert_equal 1, min_rooms(intervals)
  end

  def test_single_interval
    intervals = [[10, 20]]
    assert_equal 1, min_rooms(intervals)
  end

  def test_empty_input
    intervals = []
    assert_equal 0, min_rooms(intervals)
  end

  def test_nil_input
    assert_equal 0, min_rooms(nil)
  end
end
