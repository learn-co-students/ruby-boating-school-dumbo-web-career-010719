class Student

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def tests
    BoatingTest.all.select {|test| test.student == self}
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def grade_percentage
    total = self.tests.count.to_f
    passed = self.tests.select {|test| test.test_status == "Passed"}.count.to_f
    percentage = passed / total * 100
  end

  def self.find_student(name)
    Student.all.select {|stud| stud.name == name}
  end

end
