def create_largest_number(nums)
  sorted = nums.sort { |a, b| "#{b}#{a}" <=> "#{a}#{b}" }
  sorted.join.to_i
end


p create_largest_number([10, 7, 76, 415])
