def matching_brackets(brackets)
  opening = ['(', '[', '{']
  closing = [')', ']', '}']

  string_length = brackets.length
  return false if string_length.odd?
  return false if brackets.empty?

  mididx = string_length / 2

  (0...mididx).each do |i|
    return false unless opening.include?(brackets[i])
  end

  (mididx...string_length).each do |i|
    return false unless closing.include?(brackets[i])
  end

  (0...mididx).each do |i|
    return false unless opening.index(brackets[i]) == closing.index(brackets[-1 - i])
  end

  true
end
