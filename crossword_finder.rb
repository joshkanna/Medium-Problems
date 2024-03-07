def crossword_finder(matrix, target)
  # left to right
  for arr in matrix
    arr.each_cons(target.length) do |word|
      return true if word.join == target
    end
  end

  # up to down
  arr_length = matrix[0].length

  for i in 0...arr_length
    vertical = []
    for arr in matrix
      vertical << arr[i]
    end
    vertical.each_cons(target.length) do |word|
      return true if word.join == target
    end
  end
  false
end
