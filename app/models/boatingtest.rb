class BoatingTest
	attr_accessor :student, :test_name, :test_status, :instructor
	@@all = []
	#should initialize with student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
	def initialize(student, test_name, test_status, instructor)
		@student, @test_name, @test_status, @instructor = student, test_name, test_status, instructor
		@@all << self
	end

	def self.all
		@@all
	end
end
