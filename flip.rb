def flip(str)
  last_x_idx = 0
  (str.length-1).downto(0) do |i|
    if str[i] == "x"
      last_x_idx = i
      break
    end
  end

  count = 0

  (0..last_x_idx).each do |i|
    if str[i] == "y"
      count += 1
    end
  end
  count
end

