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

	def pass_student(student_name, testing)

		student = Student.find_student(student_name)
		BoatingTest.all.each do |test|
			if test.student == student && test.boat_name == testing
				p test.boat_status
				test.boat_status = "passed"

				return "updated to pass"
			end
		end
		BoatingTest.new(Student.new(student_name), testing, "passed" , self)

	end

	def fail_student(student_name, testing)
		student = Student.find_student(student_name)
		BoatingTest.all.each do |test|
			if test.student == student && test.boat_name == testing
				test.boat_status = "failed"
				return "updated to fail"
			end
		end
		BoatingTest.new(Student.new(student_name), testing, "failed" , self)
	end
end
