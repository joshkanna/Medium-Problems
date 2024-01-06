# longest_streak.rb
require 'date'

def longest_streak(dates)
  return 0 if dates.empty?

  sorted_dates = dates.map { |hash| Date.parse(hash[:date]) }.sort
  longest = current = 1

  sorted_dates.each_cons(2) do |prev, curr|
    if (curr-prev).to_i == 1
      current +=1
      longest = current if current > longest
    else
      current = 1
    end
  end
  longest
end

p longest_streak([{
    date: "2019-12-30"
  },
  {
    date: "2019-12-31"
  },
  {
    date: "2020-01-01"
  },
  {
    date: "2019-09-26"
  },
  {
    date: "2019-09-27"
  },
  {
    date: "2019-09-30"
  }])