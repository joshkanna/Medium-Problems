require 'minitest/autorun'
require_relative 'bunny_ears.rb'

class BunnyEarsTest < Minitest::Test
  def test_example_one
    assert_equal 0, bunny_ears(0)
  end

  def test_example_two
    assert_equal 2, bunny_ears(1)
  end

  def test_example_three
    assert_equal 4, bunny_ears(2)
  end

  def test_with_3
    assert_equal 6, bunny_ears(3)
  end

  def test_big_input
    assert_equal 200, bunny_ears(100)
  end
end