require('minitest/autorun')
require('minitest/pride')
require_relative('../part_a.rb')

# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Kevin", "G15")
  end
  # Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
  def test_student_name
    assert_equal("Kevin", @student.student_name())
  end

  def test_student_cohort
    assert_equal("G15", @student.student_cohort())
  end

  # Add in Setter methods to update the students name and what cohort they are in.
  def test_set_student_name
    @student.set_student_name("Paul")
    assert_equal("Paul", @student.student_name())
  end

  def test_set_student_cohort
    @student.set_student_cohort("G16")
    assert_equal("G16", @student.student_cohort())
  end

  # Create a method that gets the student to talk (eg. Returns "I can talk!).
  def test_student_can_talk
    assert_equal("I can talk!", @student.student_can_talk())
  end

  # Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").
  def test_favourite_coding_language
    assert_equal("I love Ruby", @student.favourite_coding_language("Ruby"))
  end

end
