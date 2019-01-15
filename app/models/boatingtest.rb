class BoatingTest

    attr_reader :student, :test_name, :instructor
    attr_accessor :status

    @@tests = []
    def initialize(student, test_name, status, instructor)
        @student = student
        @test_name = test_name
        @status = status
        @instructor = instructor
        @@tests << self
    end
    def self.all
        @@tests
    end
end
