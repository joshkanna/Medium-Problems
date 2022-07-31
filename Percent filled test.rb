# Percent filled test

require 'Minitest/autorun'
require_relative '01_percentage_of_filled_in_box.rb'

class PercentFilled < Minitest::Test
	def test_twenty_five_percent
		assert_equal "25%", percent_filled([
			"####",
			"#  #",
			"#o #",
			"####",
		])
	end

	def test_sixty_percent
		assert_equal "60%", percent_filled([
		"#######",
  		"#o oo #",
  		"#######"
  	])
	end

	def test_thirty_one_percent
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

