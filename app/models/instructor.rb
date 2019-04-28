class Instructor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def pass_student(student_name, test_name)
    found_test = BoatingTest.all.find {|test| test.name == test_name && test.student.name == student_name}
    if found_test.nil?
      BoatingTest.new(Student.new(student_name), test_name, "passed", self)
    else
      found_test.status = "passed"
    end
  end

  def fail_student(student_name, test_name)
    found_test = BoatingTest.all.find {|test| test.name == test_name && test.student.name == student_name}
    if found_test.nil?
      BoatingTest.new(Student.new(student_name), test_name, "failed", self)
    else
      found_test.status = "failed"
    end
  end

  def self.all
    @@all
  end
end
