require 'minitest/autorun'
require_relative 'longest_streak.rb'

class LongestStreakTest < Minitest::Test
  def test_basic_case
    assert_equal 3, longest_streak([
        {
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
    assert_equal 6, longest_streak([
        {
            date: "2023-09-28"
        },
        {
            date: "2023-09-29"
        },
        {
            date: "2023-09-30"
        },
        {
            date: "2023-10-01"
        },
        {
            date: "2023-10-02"
        },
        {
            date: "2023-10-03"
        }
        ])
  end

  def test_end_of_year
    assert_equal 4, longest_streak([
        {
          date: "2023-12-30"
        },
        {
          date: "2023-12-31"
        },
        {
          date: "2024-01-01"
        },
        {
          date: "2024-01-02"
        },
        {
          date: "2024-09-27"
        },
        {
          date: "2024-09-30"
        }
      ])
  end
end