class Student
  attr_reader :name

  @@all = []

  def initialize(first_name)
    @name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_student(first_name)
    self.all.select {|list| list.name == first_name}
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def grade_percentage
    tests = BoatingTest.all.map { |list| list.status }
    passed = tests.select {|tests| tests == "passed"}.count
    decimal = passed.to_f / (tests.count).to_f
    decimal * 100.0
  end
end
