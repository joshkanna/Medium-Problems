require 'minitest/autorun'
require_relative 'crossword_finder'

class CrosswordFinderTest < Minitest::Test
  def test_left_to_right
    assert_equal true, crossword_finder([['F', 'A', 'C', 'I'],
    ['O', 'B', 'Q', 'P'],
    ['A', 'N', 'O', 'B'],
    ['M', 'A', 'S', 'S']], 'MASS')
  end

  def test_up_to_down
    assert_equal true,  crossword_finder([['F', 'A', 'C', 'I'],
    ['O', 'B', 'Q', 'P'],
    ['A', 'N', 'O', 'B'],
    ['M', 'A', 'S', 'S']], 'FOAM')
  end
end