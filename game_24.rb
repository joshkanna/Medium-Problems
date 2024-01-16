def game_24(arr)
  n = arr.length

  if n == 1
    return true if (arr[0] - 24).abs < 0.001

    return false

  end

  for i in (0...n)
    for j in (i + 1...n)
      c1 = arr[i]
      c2 = arr[j]

      possible_results = [c1 + c2, c1 - c2, c2 - c1, c1 * c2]

      if c1 != 0
        possible_results.append(c2/c1)
      end

      if c2 != 0
        possible_results.append(c1/c2)
      end

      for v in possible_results
        next_arr = [v]
        for k in (0...n)
          next_arr.append(arr[k]) unless [i, j].include?(k)
        end

        return true if game_24(next_arr)
      end
    end
  end
  return false
end

p game_24([1, 2, 1, 2])