require 'minitest/autorun'
require_relative 'course_prerequisites'

class CoursePrerequisitesTest < Minitest::Test
  def test_example
    assert_equal ["CSC100", "CSC200", "CSC300"], course_prerequisites({'CSC300': ['CSC100', 'CSC200'], 'CSC200': ['CSC100'], 'CSC100': []})
  end

  def test_nil_example
    assert_nil course_prerequisites({'CSC300': ['CSC100'], 'CSC200': ['CSC300'], 'CSC100': ['CSC200']})
  end

  def test_five_courses
    assert_equal ["CSC100", "CSC200", "CSC300", "CSC400", "CSC500"], course_prerequisites({"CSC200": ["CSC100"], "CSC100": [], "CSC300": ["CSC200"], "CSC500": ["CSC400"]})
  end
end