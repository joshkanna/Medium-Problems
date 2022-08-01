def calculate_score(array)
	abigail = 0
	benson = 0
	for item in array
		if (item[0] == "P" && item[1] == "R") || (item[0] == "R" && item[1] == "S") || (item[0] == "S" && item[1] == "P")
			abigail +=1
		elsif (item[0] == "R" && item[1] == "P") || (item[0] == "S" && item[1] == "R") || (item[0] == "P" && item[1] == "S")
			benson +=1
		end
	end
	if abigail > benson
		"Abigail"
	elsif abigail < benson
		"Benson"
	else
		"Tie"
	end
end

calculate_score([["P","R"], ["R", "P"], ["S","P"], ["S", "P"]])