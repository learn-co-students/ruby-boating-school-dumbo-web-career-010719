class BoatingTest
	attr_accessor :student, :boat_name, :boat_status, :instructor
	@@all = []

	def initialize(student, boat_name, boat_status, instructor)
		@student = student
		@boat_name = boat_name
		@boat_status = boat_status
		@instructor = instructor
		@@all << self
	end

	def self.all
		@@all
	end
	
end
