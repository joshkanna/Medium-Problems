require 'minitest/autorun'
require_relative 'unlock_pattern_validation'

class UnlockPatternValidationTest < Minitest::Test
  def test_example_one
    assert unlock_pattern_validation([4, 2, 1, 7])
  end

  def test_example_two
    refute unlock_pattern_validation([2, 1, 7])
  end

  def test_middle_value_skipped_before_usage
    refute unlock_pattern_validation([[3, 9, 6, 5]])
  end

  def test_valid_pattern_no_skipping
    assert unlock_pattern_validation([2, 5, 7, 8])
  end
end