class Instructor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student_name, test_name)
    passed = BoatingTest.all.find{|test| test.student.name == student_name && test.name == test_name}
    passed.status= "passed"
  end

  def fail_student(student_name, test_name)
    failed = BoatingTest.all.find{|test| test.student.name == student_name && test.name == test_name}
    failed.status= "failed"
  end

end
