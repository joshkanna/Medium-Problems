# The words in the input sentence are first reversed, and then the sorting is done.
# This reversal is done to ensure that, in case of words having equal lengths,
# the word that appeared first in the original sentence will be considered first when sorting in descending order.
# This way, the sorting process ensures that the result retains the original order of words that have the same length.

def get_hash_tags(sentence)
  return nil if sentence.empty?
  sentence = sentence.gsub(/[^A-Za-z\s]/, '') # removes punctiation
  sentence.downcase!
  return ["##{sentence}"] if sentence.split.length < 2

  sentence = sentence.split.reverse
  sorted = sentence.sort_by { |word| word.length }

  sorted.reverse!

  hashtags = sorted.first(3).map { |w| "##{w}" } if sorted.length > 2
  hashtags = sorted.first(2).map { |w| "##{w}" } if sorted.length == 2
  hashtags
end
