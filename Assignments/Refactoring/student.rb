# File: student.rb

# Replace Magic Number with Symbolic Constant
# Rename Method
# Split Temporary Variable
# Extract Method
# Hide Method
# Introduce Explaining Variable
# Replace Error Code with Exception
# Introduce Named Parameter
# Separate Query from Modifier
# Replace Loop with Collection Closure Method

class Student

  GOOD_AVERAGE = 85
  MAX_POOR_ANUAL_INCOME = 15_000

  attr_reader :name, :id
  attr_accessor :anual_income

  def initialize(name: , id: , anual_income: 25_000 )
    @name = name
    @id = id
    @anual_income = anual_income
    @grades = []
  end



  def add_grade(grade)
    @grades << grade
    self
  end

  def display_personal_information_and_disclaimer
    display_personal_information
    display_disclaimer
  end

  def scholarship_worthy?
    # Nothing reasonable to do if this student has currently no grades.
    raise 'Cannot check if scholarship worthy when grades are empty!' if @grades.empty?
    good_grades = average >= GOOD_AVERAGE
    is_poor = @anual_income < MAX_POOR_ANUAL_INCOME
    good_grades and is_poor
  end

  private

  def average
    @grades.reduce(:+) / @grades.size.to_f
  end

  def display_personal_information
    puts "Name: #{ @name } ID: #{ @id }"
    puts "Anual income: #{ @anual_income }"
    puts "Grade average: #{ average }"
  end

  def display_disclaimer
    puts 'The contents of this class must not be considered an offer,'
    puts 'proposal, understanding or agreement unless it is confirmed'
    puts 'in a document signed by at least five blood-sucking lawyers.'
  end

end
