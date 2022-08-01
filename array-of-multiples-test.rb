# array of multiples test

require 'Minitest/autorun'
require_relative '04_array_of_multiples.rb'

class ArrayOfMultiples < Minitest::Test
	def test_five_multiples_of_seven
		assert_equal [7, 14, 21, 28, 35], array_of_multiples(7, 5)
	end

	def test_ten_multiples_of_twelve
		assert_equal [12, 24, 36, 48, 60, 72, 84, 96, 108, 120], array_of_multiples(12,10)
	end

	def test_six_multiples_of_seventeen
		assert_equal [17, 34, 51, 68, 85, 102], array_of_multiples(17, 6)
	end
end
