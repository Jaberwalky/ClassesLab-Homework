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





end