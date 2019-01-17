class Instructor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def pass_student(student_name, test_name)
      BoatingTest.all.each do |obj|
        if obj.student.first_name == student_name && obj.test_name == test_name
          obj.test_status = "passed"
        end
      end
      if Student.find_student(student_name) == []
        new = Student.new(student_name)
        BoatingTest.new(new, test_name, "passed", self)
      elsif BoatingTest.all.select { |obj| obj.test_name == test_name} == [] && Student.find_student(student_name)
        BoatingTest.new(Student.find_student(student_name)[0], test_name, "passed", self)
      end
    BoatingTest.all.select do |obj|
      obj.student.first_name == student_name && obj.test_name == test_name
    end
  end

  def fail_student(student_name, test_name)
    BoatingTest.all.each do |obj|
      if obj.student.first_name == student_name && obj.test_name == test_name
        obj.test_status = "failed"
      end
    end
    if Student.find_student(student_name) == []
      new = Student.new(student_name)
      BoatingTest.new(new, test_name, "failed", self)
    elsif BoatingTest.all.select { |obj| obj.test_name == test_name} == [] && Student.find_student(student_name)
      BoatingTest.new(Student.find_student(student_name)[0], test_name, "failed", self)
    end
  BoatingTest.all.select do |obj|
    obj.student.first_name == student_name && obj.test_name == test_name
  end
end
end
