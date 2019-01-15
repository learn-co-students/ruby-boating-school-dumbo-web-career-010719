class Student
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def grade_percentage
    passed_tests = BoatingTest.all.select{|test| test.student == self && test.status == "passed"}.count
    (passed_tests.to_f / BoatingTest.all.select{|test| test.student == self}.count).round(4) * 100.0 
  end

  def self.all
    @@all
  end

  def self.find_student(name)
    self.all.find{|student| student.name == name}
  end
end
