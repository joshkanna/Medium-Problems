require 'minitest/autorun'
require_relative 'find_substring'

class FindSubstringTest < Minitest::Test
  def test_example_one
    assert_equal [0, 13], find_substring('dogcatcatcodecatdog', %w[cat dog])
  end

  def test_example_two
    assert_equal [], find_substring('barfoobazbitbyte', %w[dog cat])
  end

  def test_duplicates_of_words
    assert_equal [3], find_substring('toptoppethockey', %w[top pet])
  end

  def test_wanted_duplicates_of_words
    assert_equal [8, 28], find_substring('rentrentmailloadmailrentrentmailmailload', %w[mail load mail])
  end
end
