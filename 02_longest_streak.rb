require 'date'

def longest_streak(aoh)
	if aoh.length == 0
		0
	end

	count = 0
	i = 0
	
	while i < aoh.length-1
		if Date.parse(aoh[i][:date]).next_day == Date.parse(aoh[i+1][:date])
			count +=1
		end
		i+=1
	end
	count
end
longest_streak([
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