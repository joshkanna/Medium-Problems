# Longest streak test

require 'Minitest/autorun'
require_relative '02_longest_streak.rb'

class LongestStreak < MiniTest::Test 
	def test_same_year_same_month_next_day
		assert_equal 3, longest_streak([ {
    date: "2019-09-18"
  },
  {
    date: "2019-09-19"
  },
  {
    date: "2019-09-20"
  },
  {
    date: "2019-09-26"
  },
  {
    date: "2019-09-27"
  },
  {
    date: "2019-09-30"
  }
		])
	end

	def test_end_of_month
		assert_equal 3, longest_streak([
			{
				date: "2022-07-31"
			},
			{
				date: "2022-08-01"
			},
			{
				date: "2022-08-02"
			},
			{
				date: "2022-08-03"
			}
		])
	end

	def test_end_of_year
		assert_equal 2, longest_streak([
			{
				date: "2021-12-31"
			},
			{
				date: "2022-01-01"
			},
			{
				date: "2022-01-02"
			},
			{
				date: "2022-02-13"
			}
		])
	end

	def test_empty_array
		assert_equal 0, longest_streak([{}])
	end
end