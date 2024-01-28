def longest_substring_palindrome(str)
  res = ""
  res_length = 0

  (0...str.length).each do |i|
    # odd cases

    left, right = i, i
    
    while left >= 0 && right < str.length && str[left] == str[right]
      if (right - left + 1) > res_length
        res = str[left..right]
        res_length = res.length
      end
      left -= 1
      right += 1
    end

    # even cases
    
    left, right = i, i+1
    while left >= 0 && right < str.length && str[left] == str[right]
      if (right - left + 1) > res_length
        res = str[left..right]
        res_length = res.length
      end
      left -= 1
      right += 1
    end
  end
  res
end