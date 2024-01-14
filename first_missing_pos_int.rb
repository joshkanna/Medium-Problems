def first_missing_pos_int(arr)
  n = arr.length

  i = 0
  while i < n
    if arr[i] > 0 && arr[i] <= n && arr[i] != arr[arr[i] - 1]
      arr[i], arr[arr[i]-1] = arr[arr[i]-1], arr[i]
    else
      i += 1
    end
  end

  i = 0

  while i < n && arr[i] == i + 1
    i += 1
  end

  i + 1
end