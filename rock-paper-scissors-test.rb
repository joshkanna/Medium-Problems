require 'Minitest/autorun'
require_relative '03_rock_paper_scissors.rb'

class RockPaperScissors < Minitest::Test 
	def test_abigail_wins
		assert_equal 'Abigail', calculate_score([["R","P"], ["R","S"], ["S", "P"]])
	end

	def test_benson_wins
		assert_equal 'Benson', calculate_score([["S", "R"], ["P", "S"]])
	end

	def test_tie
		assert_equal 'Tie', calculate_score([["S","R"], ["R", "S"], ["R","R"]])
	end
end