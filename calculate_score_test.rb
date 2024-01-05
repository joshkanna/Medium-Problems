# calculate_score_test.rb
require 'minitest/autorun'
require_relative 'calculate_score.rb'

class CalculateScoreTest < Minitest::Test
  def test_p1_win
    assert_equal 'Abigail', calculate_score([["R", "P"], ["R", "S"], ["S", "P"]])
  end

  def test_p2_win
    assert_equal 'Benson', calculate_score([["R", "P"], ["R", "S"], ["P", "S"], ["S, R"]])
  end

  def test_draw
    assert_equal 'Tie', calculate_score([["R", "R"], ["S", "S"]])
  end
end