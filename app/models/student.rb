class Student
	attr_accessor :name
	@@all =[]
	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def add_boating_test(test_name, test_status, instructor)
		BoatingTest.new(self, test_name, test_status, instructor)
	end

	def self.find(student_object)
		@@all.select { |student| student == student_object }
	end

	def grade_percentage # return the percentage of tests that the student has passed, a Float
		all_tests = BoatingTest.all.select { |test| test.student == self }.count
		tests_passed = 0
		BoatingTest.all.select do |test| 
			test.student == self && test.test_status = "passed"
			tests_passed += 1
		end
		all_tests.to_f / tests_passed
	end
end
