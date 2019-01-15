class Instructor
  attr_accessor :name, :student_name, :test_name, :status
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student_name, test_name)
    pass_array = BoatingTest.all.select do |test|
      test.student == student_name
    end
    pass_array.map do |test|
      test.test_status = 'passed'
    end
  end

  def fail_student(student_name, test_name)
    fail_array = BoatingTest.all.select do |test|
      test.student == student.name
    end
    fail_array / BoatingTest.all.size
    # fail_array.map do |test|
    #   test.test_status = 'failed'
  end

end
