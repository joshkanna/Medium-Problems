def array_of_multiples(num, length)
  arr = []

  (1..length).each do |multiple|
    arr.append(num*multiple)
  end
  arr
end