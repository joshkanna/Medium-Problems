# Percent filled

def percent_filled(argument)
	amnt_filled = 0
	amnt_empty = 0
	for item in argument
		for i in item.split("")
			if i == "o"
				amnt_filled +=1
			elsif i == " "
				amnt_empty +=1
			end
		end
	end
	denominator = amnt_empty+amnt_filled
	fraction = amnt_filled/denominator.to_f
	percentage = (fraction*100).to_i
	ans = String(percentage)+"%"

	ans
end

percent_filled(["####",
  "#  #",
  "#o #",
  "####"])