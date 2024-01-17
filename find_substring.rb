def find_substring(s, words)
  return [] if s.empty? || s.length == 0 || words.empty? || words.length == 0

  frequency_map = Hash.new(0)

  words.each { |word| frequency_map[word] += 1 }

  word_length = words[0].length
  total_words = words.length
  result = []

  (0..s.length - total_words * word_length).each do |i|
    seen_words = Hash.new(0)

    (0...total_words).each do |j|
      word_index = i + j * word_length

      word = s[word_index, word_length]

      break unless frequency_map.key?(word)

      seen_words[word] += 1

      break if seen_words[word] > frequency_map[word]

      result.append(i) if j + 1 == total_words
    end
  end
  result
end

p find_substring('dogcatcatcodecatdog', %w[cat dog])
