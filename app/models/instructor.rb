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
  def pass_student(stud, testName)
    if (BoatingTest.all.all?{ |obj| obj.student.name == stud && obj.testName == testName})
      BoatingTest.all.find{ |obj| obj.student.name == stud && obj.testName == testName}.testStatus == "passed"
    else
      #stud.add_boating_test(testName, "passed", self)
      BoatingTest.new(stud, testName, "passed", self)
    end
  end
  def fail_student(stud, testName)
    if (BoatingTest.all.all?{ |obj| obj.student.name == stud && obj.testName == testName})
      BoatingTest.all.find{ |obj| obj.student.name == stud && obj.testName == testName}.testStatus == "failed"
    else
      # stud.add_boating_test(testName, "failed", self)
      BoatingTest.new(stud, testName, "failed", self)
    end
  end
end
