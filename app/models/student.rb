require 'pry'
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
  def add_boating_test(testName, testStatus, instructor)
    BoatingTest.new(self, testName, testStatus, instructor)
  end
  def self.find_student(fname)
    @@all.find { |obj|
       obj.name == fname }
  end
  def grade_percentage
    cnt = BoatingTest.all.select { |obj| obj.student == self }.count.to_f
    BoatingTest.all.select { |obj| (obj.student == self && obj.testStatus == "passed")}.count/cnt * 100
  end
end
