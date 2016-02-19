require "minitest/autorun"
require "student"

class StudentTest < Minitest::Test

  def setup
    @out = StringIO.new
    @old_stdout = $stdout
    $stdout = @out
    @s = Student.new(name: "John", id: 123, anual_income: 25_000)
  end

  def teardown
    $stdout = @old_stdout
  end

  def test_student_creation
    assert_equal "John", @s.name
    assert_equal 123, @s.id
  end

  def test_anual_income_accessor
    assert_equal 25_000, @s.anual_income
    @s.anual_income = 30_000
    assert_equal 30_000, @s.anual_income
    @s.anual_income = 35_000
    assert_equal 35_000, @s.anual_income
  end

  def test_add_grade
    assert_same @s, @s.add_grade(70)
    assert_same @s, @s.add_grade(75)
  end

  def test_display_personal_information_and_disclaimer
    @s.add_grade(98).add_grade(77).add_grade(83)
    @s.display_personal_information_and_disclaimer
    assert_equal \
      "Name: John ID: 123\n"  \
      "Anual income: 25000\n" \
      "Grade average: 86.0\n" \
      "The contents of this class must not be considered an offer,\n" \
      "proposal, understanding or agreement unless it is confirmed\n" \
      "in a document signed by at least five blood-sucking lawyers.\n",
      @out.string
  end

  def test_scholarship_worthy?
    assert_raises(RuntimeError) { @s.scholarship_worthy?}
    @s.add_grade(100).add_grade(90)
    refute @s.scholarship_worthy?

    other = Student.new(name: 'Mary',id: 299,anual_income: 12_500)
    other.add_grade(100).add_grade(90).add_grade(94)
    assert other.scholarship_worthy?
  end

end
