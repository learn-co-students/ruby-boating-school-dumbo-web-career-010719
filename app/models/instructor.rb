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

  def tests
    BoatingTest.all.select {|test| test.instructor == self}
  end

  def add_boating_test(student, test_name, test_status)
    BoatingTest.new(student, test_name, test_status, self)
  end

  def pass_student(name, test_name)
    self.tests.each do |test|
      if test.student == name && test.test_name == test_name
        test.test_status = "Passed"
        test
      else
        new = self.add_boating_test(name, test_name, test_status="Passed")
        return new
      end
    end
  end

  def fail_student(name, test_name)
    self.tests.each do |test|
      if test.student == name && test.test_name == test_name
        test.test_status = "Failed"
        test
      else
        new = self.add_boating_test(name, test_name, test_status="Failed")
        return new
      end
    end
  end

end
