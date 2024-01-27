
require 'minitest/autorun'
require_relative 'longest_substring_palindrome'

class LongestSubstringPalindrome < Minitest::Test
  def test_example_one
    assert_equal 'bcdcb', longest_substring_palindrome('aabcdcb')
  end

  def test_example_two
    assert_equal 'anana', longest_substring_palindrome('bananas')
  end

  def test_length_one_palindrome
    assert_equal 's', longest_substring_palindrome('seatbelt')
  end

  def test_more_than_one_palindrome
    assert_equal 'malayalam', longest_substring_palindrome('malayalamracecar')
  end

  def test_empty_string
    assert_equal '', longest_substring_palindrome('')
  end
end
