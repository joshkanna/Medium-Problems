# zip_zap_test.rb
require 'minitest/autorun'
require_relative 'zip_zap'

class ZipZapTest < Minitest::Test
    def test_example_one
      assert_equal "zpxzp", zip_zap("zipxzap")
    end

    def test_example_two
      assert_equal "zpzp", zip_zap("zopzop")
    end

    def test_example_three
      assert_equal "zzzpzp", zip_zap("zzzopzop")
    end

    def test_zp_with_length_of_4
      assert_equal "ziipzaap", zip_zap("ziipzaap")
    end
end