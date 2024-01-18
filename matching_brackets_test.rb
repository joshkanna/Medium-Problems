require 'minitest/autorun'
require_relative 'matching_brackets'

class MatchingBracketsTest < Minitest::Test
  def test_example_one
    assert matching_brackets('([])')
  end

  def test_example_two
    refute matching_brackets('([)]')
  end

  def test_example_three
    refute matching_brackets('((()')
  end

  def test_empty_string
    refute matching_brackets('')
  end

  def test_odd_brackets
    refute matching_brackets('({[})')
  end

  def test_curly_brackets
    assert matching_brackets('{([])}')
  end
end
