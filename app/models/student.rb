class Student

	attr_accessor :name 
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def add_boating_test(boat_name, boat_status, instructor)
		BoatingTest.new(self, boat_name, boat_status, instructor)
	end

	def self.find_student(name)
		@@all.find do |student|
			student.name == name
		end
	end

	def tests
		BoatingTest.all.select do |test|
			test.student == self
		end
	end

	def grade_percentage
		result = tests.select do |test|
			test.boat_status == "passed"
		end.length/tests.length.to_f
		# p result.length * 1.0
	end
end
