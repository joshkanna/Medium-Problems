# Percent filled

def percent_filled(argument)
	amnt_filled = 0
	amnt_empty = 0
	for item in argument
		if item.include?(" ") || item.include?('o')
			amnt_filled += item.count('o')
			amnt_empty += item.count(' ')
		end
	end
	denominator = amnt_empty+amnt_filled
	ans = "#{amnt_filled*100/denominator}%"
	ans
end

percent_filled(["####",
  "#  #",
  "#o #",
  "####"])
