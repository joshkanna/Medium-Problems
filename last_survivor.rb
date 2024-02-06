def last_survivor(n, k)
  prisoners = (1..n).to_a

  idx = 0

  while prisoners.length > 1
    idx = (idx + k - 1) % prisoners.length

    prisoners.delete_at(idx)
  end

  prisoners[0]
end

# Example usage:
# puts last_survivor(5, 2)  # Output: 3

# log n solution for when k = 2
# Watched a numberphile vid on the problem
# If n is a power of 2, position 1 is the last survior
# For every other case of n, the last survivor is 2l + 1,
# where l = n - highest power of 2 that's less than n.

# To check if a number is a power of 2 in ruby, you can use the & operator
# powers of 2 have one bit, e.g. 4 = 100, 8 = 1000.
# if n & n-1 == 0, then the number is a power of 2, as it will come out to a
# binary number with one bit.

def logn_solution(n)
  return 1 if n > 0 && (n & (n - 1)) == 0

  2 * (n - (n & (n - 1))) + 1
end

# p logn_solution(5)
