require 'minitest/autorun'
require_relative 'distance_to_nearest_vowel'

class DistanceToNearestVowel < Minitest::Test
  def test_example_one
    assert_equal [0, 0, 0, 0, 0], distance_to_nearest_vowel("aaaaa")
  end

  def test_example_two
    assert_equal [1, 0, 1, 2, 3], distance_to_nearest_vowel("babbb")
  end

  def test_example_three
    assert_equal [0, 1, 2, 1, 0, 1, 2, 3], distance_to_nearest_vowel("abcdabcd")
  end

  def test_example_four 
    assert_equal [2, 1, 0, 1, 1, 0, 1], distance_to_nearest_vowel("shopper")
  end
end

