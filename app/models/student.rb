class Student
  attr_reader :first_namem :last_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(first_name)
    Student.all.select do |student|
      student.first_name == self
    end
  end

  def grade_percentage
    passed_arrray = BoatingTest.all.select do |test|
      test.test_status == 'passed'
    end
    failed_array = BoatingTest.all.select do |test|
      test.test_status == 'failed'
    end
    total_array = 
  end

end
