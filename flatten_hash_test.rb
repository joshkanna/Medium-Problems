require 'minitest/autorun'
require_relative 'flatten_hash'

class FlattenHashTest < Minitest::Test
  def test_example_one
    assert_equal({"key"=>3, "foo.a"=>5, "foo.bar.baz"=>8}, flatten_hash({
      "key": 3,
      "foo": {
          "a": 5,
          "bar": {
              "baz": 8
          }
      }
    }))
  end

  def test_one_nested_hash
    assert_equal({"a.b"=> 3}, flatten_hash({"a": {
      "b": 3
    }}))
  end

  def test_no_nested_hash
    assert_equal({"a" => 3}, flatten_hash({"a" => 3}))
  end
end