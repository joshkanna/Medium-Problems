# can_balance.rb

def can_balance(arr)
  return -1 if arr.empty?

  mididx = (arr.length - 1) / 2
  arr1_sum = 0
  arr2_sum = 0 
  (0..mididx).each { |i| arr1_sum += arr[i] }
  (mididx + 1...arr.length).each { |i| arr2_sum += arr[i]}

  return true if arr1_sum == arr2_sum

  false
end