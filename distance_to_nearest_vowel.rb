def distance_to_nearest_vowel(str)
  vowels = 'aeiou'
  vowel_positions = []
  distances = []

  str.each_char.with_index { |char, index| vowel_positions << index if vowels.include?(char) }

  str.each_char.with_index do |char, index|
    if vowels.include?(char)
      distances << 0
    else
      nearest_vowel_distance = vowel_positions.map { |pos| (pos - index).abs }.min
      distances << nearest_vowel_distance
    end
  end

  distances
end

