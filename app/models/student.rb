class Student

    attr_reader :first_name
    @@all  = []

    def initialize(name)
        @first_name = name
        @@all << self
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.all
        @@all
    end

    def self.find_student(first_name)
        self.all.select{ |student| student.first_name == first_name}
    end

    def grade_percentage
        tests = BoatingTest.all.select { |test|
            test.student == self
        }.partition { |student_test| student_test.test_status == "passed"}
        
        tests[0].size.fdiv(tests[0].size + tests[1].size).round(2)
    end
    
end
