def second_largest_number(arr)
  arr.delete(arr.max)
  arr.max
end

p second_largest_number([10, 40, 30, 20, 50])