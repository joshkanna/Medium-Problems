def codeville(weights, max_weight)
  boats = 0

  until weights.empty?
    if weights.length > 1 && weights[0] + weights[-1] <= max_weight
      weights.pop
      weights.shift
    else
      weights.pop
    end
    boats += 1
  end
  boats
end
p codeville([100, 200, 150, 80], 200)
