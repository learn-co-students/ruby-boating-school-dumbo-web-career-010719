class Instructor

	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end
	
	def self.all
		@@all
	end

	def pass_student(student_name, test)
		student = Student.find_student(student_name)
		BoatingTest.all.each do |test|
			if test.student == student && test.boat_name == test
				test.boat_status = "passed"
				return test
			end
		end
		BoatingTest.new(student, test, "passed" , self)
	end

	def fail_student(student_name, test)
		student = Student.find_student(student_name)
		BoatingTest.all.each do |test|
			if test.student == student && test.boat_name == test
				test.boat_status = "failed"
				return test
			end
		end
		BoatingTest.new(student, test, "failed" , self)

	end
end
