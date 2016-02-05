# File: student.rb

class Student

  attr_reader :name, :id
  $SCHOLARSHIP_VALUE = 15_000 #Replace magic number wth symbol
  $GOOD_AVERAGE = 85

  def initialize(name, id, anual_income)
    @name = name
    @id = id
    @anual_income = anual_income
    @grades = []
  end

  def reset_anual_income(anual_income)
    previous_anual_income = @anual_income
    @anual_income = anual_income
    previous_anual_income
  end

  def add_grade(grade)
    @grades << grade
    self
  end

  def display_personal_information_and_disclaimer #Rename Method
    # Display Personal Information
    puts "Name: #{ @name } ID: #{ @id }"
    puts "Anual income: #{ @anual_income }"
    grade_sum = 0
    @grades.each do |grade|
      grade_sum += grade
    end
    average = grade_sum / @grades.size.to_f
    puts "Grade average: #{ average }"

    display_disclaimer

  end

  #Extract method
  def display_disclaimer
    puts 'The contents of this class must not be considered an offer,'
    puts 'proposal, understanding or agreement unless it is confirmed'
    puts 'in a document signed by at least five blood-sucking lawyers.'
  end

  def scholarship_worthy?
    # Nothing reasonable to do if this student has currently no grades.
    return -1 if @grades.empty?

    # A student is worthy of a scholarship if he/she has good grades and
    # is poor.
    grade_sum = 0
    @grades.each do |grade|
      grade_sum += grade
    end
    average = grade_sum / @grades.size.to_f
    (average >= $GOOD_AVERAGE) and (@anual_income < $SCHOLARSHIP_VALUE)
  end

  private :display_disclaimer

end
