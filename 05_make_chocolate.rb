# make chocolate

def make_chocolate(small_amnt, big_amnt, goal)
	amnt_after_big_bar = goal - big_amnt*5
	if amnt_after_big_bar - small_amnt > 0
		-1
	else
		goal - big_amnt*5
	end
end

print make_chocolate(4,1,9)
		