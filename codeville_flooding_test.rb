require 'minitest/autorun'
require_relative 'codeville_flooding'

class CodevilleFloodingTest < Minitest::Test
  def test_example
    assert_equal 3, codeville([100, 200, 150, 80], 200)
  end

  def test_all_pairs_below_limit
    assert_equal 2, codeville([30, 60, 20, 10], 100)
  end

  def test_only_one_person
    assert_equal 1, codeville([24], 30)
  end

  def test_uneven_people
    assert_equal 3, codeville([50, 30, 60, 10, 20], 100)
  end
end
