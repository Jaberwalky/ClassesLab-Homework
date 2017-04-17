require 'minitest/autorun'
require_relative 'part_a'
require 'minitest/rg'

class TestCodeClanStudent < Minitest::Test

  def setup
    @student_1 = CodeClanStudent.new("Paul", 12)
  end


  def test_get_name
    assert_equal("Paul", @student_1.get_name())
  end

  def test_get_cohort
    assert_equal(12, @student_1.get_cohort())
  end

  def test_set_student_name
    @student_1.set_name("Alex")
    assert_equal("Alex", @student_1.get_name())
  end

  def test_set_cohort
    @student_1.set_cohort(10)
    assert_equal(10, @student_1.get_cohort)
  end

  def test_make_student_talk
    assert_equal("Happy to be here!", @student_1.make_student_talk)
  end

  def test_get_favourite_programming_language
    assert_equal("Paul loves Ruby", @student_1.get_favourite_programming_language("Ruby"))
  end

end