# percent_filled_test.rb
require 'minitest/autorun'
require_relative 'percent_filled'

class PercentFilledTest < Minitest::Test
   def test_example_one
    assert_equal "25%", percent_filled([
        "####",
        "#  #",
        "#o #",
        "####"
      ])
   end

   def test_example_two
    assert_equal "60%", percent_filled([
        "#######",
        "#o oo #",
        "#######"
      ])
    end

    def test_example_three
      assert_equal "31%", percent_filled([
        "######",
        "#ooo #",
        "#oo  #",
        "#    #",
        "#    #",
        "######"
      ]) 
    end
end