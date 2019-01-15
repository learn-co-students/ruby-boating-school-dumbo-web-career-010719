class BoatingTest
  attr_reader :student, :testName, :testStatus, :instructor
  @@all = []
  def initialize(student, testName, testStatus, instructor)
    @student = student
    @testName = testName
    @testStatus = testStatus
    @instructor = instructor
    @@all << self
  end
  def self.all
    @@all
  end
end
