def coin_selection(coins)
  turn = 1
  max_amount = 0

  left = 0
  right = coins.length - 1

  while left <= right
    # player 1 turn
    if turn.odd?
      if coins[left] > coins[right] # if first coin is greater than last coin
        max_amount += coins[left]
        left += 1
      elsif coins[left] < coins[right] # if last coin is greater than first coin
        max_amount += coins[right]
        right -= 1
      elsif left == right # since coins are even, checking if we have reached the final coin to choose from
        max_amount += coins[left]
        left += 1
      elsif coins[left + 1] > coins[right - 1] # since coins are even, checking which coin will result in the opponents next choice resulting in less money
        max_amount += coins[right]
        right -= 1
      else
        max_amount += coins[left] # if all conditions fail just pick the first coin
        left += 1
      end

    # player 2 turn

    elsif coins[left] > coins[right]
      left += 1
    elsif coins[left] < coins[right]
      right -= 1
    elsif left == right
      left += 1
    elsif coins[left + 1] > coins[right - 1]
      right -= 1
    else
      left += 1
    end
    turn += 1
  end
  max_amount
end

p coin_selection([3, 2, 4, 5, 6, 7, 3, 9])
