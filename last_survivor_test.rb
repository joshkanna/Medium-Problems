require 'minitest/autorun'
require_relative 'last_survivor'

class LastSurvivorTest < Minitest::Test
  def test_example_one
    assert_equal 3, last_survivor(5, 2)
  end

  def test_using_3_as_k
    # 1 2 3 4 5 6
    # 1 2   4 5 6
    # 1 2   4 5
    # 1 2     5
    # 1       5
    # 1
    assert_equal 1, last_survivor(6, 3)
  end

  def test_using_8_as_n_3_as_k
    # 1 2 3 4 5 6 7 8
    # 1 2   4 5 6 7 8
    # 1 2   4 5   7 8
    #   2   4 5   7 8
    #   2   4     7 8
    #       4     7 8
    #       4     7
    #             7
    assert_equal 7, last_survivor(8, 3)
  end

  def test_logn_function
    assert_equal 3, logn_solution(5)
  end

  def test_logn_function_with_6
    # 1 2 3 4 5 6
    # 1   3 4 5 6
    # 1   3   5 6
    # 1   3   5
    # 1       5
    #         5

    assert_equal 5, logn_solution(6)
  end

  def test_logn_function_with_power_of_2
    assert_equal 1, logn_solution(8)
  end
end
