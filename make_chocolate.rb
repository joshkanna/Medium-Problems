# make_chocolate.rb

def make_chocolate(small, big, goal)
  kilos_of_big = big * 5
  total = kilos_of_big + small
  balance = goal - total
  return -1 if balance.positive?
  return small if balance.zero?

  small + balance if balance.negative?
end
