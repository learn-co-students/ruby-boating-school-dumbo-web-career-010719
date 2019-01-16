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

	# take in a student name and test name. 
	# If there is a BoatingTest whose name and student name match the names passed in, 
	# this method should update that BoatingTest status to 'passed'. 
	# If there is no matching test, this method should create a test with a student with that name, 
	# that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
	def pass_student(student_name, test_name)
		BoatingTest.all.select do |test| 
			if test.student == student_name 
				test.test_status = 'passed'
			elsif test.student != student_name
					return BoatingTest.new(student_name, test_name, 'passed', self)
			end
		end
	end

	# take in a student name and test name. 
	# it should try to find a matching BoatingTest and update its status to 'failed'. I
	# f it cannot find an existing BoatingTest, it should create one with the name, 
	# the matching student, and the status 'failed'.
	def fail_student(student_name, test_name)
		BoatingTest.all.select do |test| 
			if test.student == student_name 
				test.test_status = 'failed'
			elsif test.student = nil
					return BoatingTest.new(student_name, test_name, 'failed', self)
			end
		end
	end
end
