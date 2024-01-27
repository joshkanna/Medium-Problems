require 'minitest/autorun'
require_relative 'headline_hashtags'

class HeadlineHashtagsTest < Minitest::Test
  def test_example_one
    assert_equal ["#avocado", "#became", "#global"], get_hash_tags("How the Avocado Became the Fruit of the Global Trade")
  end

  def test_example_two
    assert_equal ["#christmas", "#probably", "#will"], get_hash_tags("Why You Will Probably Pay More for Your Christmas Tree This Year")
  end

  def test_example_three
    assert_equal ["#surprise", "#parents", "#fruit"], get_hash_tags("Hey Parents, Surprise, Fruit Juice Is Not Fruit")
  end

  def test_example_four
    assert_equal ["#visualizing", "#science"], get_hash_tags("Visualizing Science")
  end

  def test_one_word
    assert_equal ["#station"], get_hash_tags("Station")
  end

  def test_empty_string
    assert_nil get_hash_tags("")
  end
end