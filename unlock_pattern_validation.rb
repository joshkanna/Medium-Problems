def create_keypad
  [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]
end

def find_indices(matrix, value)
  matrix.each.with_index do |row, row_index|
    column_index = row.index(value)
    return [row_index, column_index] if column_index
  end
  nil
end

def unlock_pattern_validation(pattern)
  keypad = create_keypad
  pattern_valid = false
  pattern.each_cons(2) do |i, j|
    current_indices = find_indices(keypad, i)
    next_indices = find_indices(keypad, j)

    if (current_indices[0] - next_indices[0]).abs <= 1 && (current_indices[1] - next_indices[1]).abs <= 1
      pattern_valid = true
    elsif (current_indices[0] + next_indices[0]).even? || (current_indices[1] + next_indices[1]).even?
      middle_value = keypad[(current_indices[0] + next_indices[0]) / 2][(current_indices[1] + next_indices[1]) / 2]
      return false unless pattern.include?(middle_value) && pattern.index(middle_value) < pattern.index(i)

      pattern_valid = true
    end
  end
  pattern_valid
end