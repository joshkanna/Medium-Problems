# make chocolate test

require 'minitest/autorun'
require_relative '05_make_chocolate.rb'

class MakeChocolate < Minitest::Test 
	def test_no_big_bars
		assert_equal -1, make_chocolate(4,0,9)
	end

	# as big bars are used before small bars, having no big bats would resul tin an error

	def test_goal_of_9
		assert_equal 4, make_chocolate(4,1,9)
	end

	def test_goal_of_10
		assert_equal -1, make_chocolate(4,1,10)
	end

	def test_goal_of_7
		assert_equal 2, make_chocolate(4,1,7)
	end
end