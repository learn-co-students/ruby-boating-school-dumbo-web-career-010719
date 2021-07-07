class Student

    attr_reader :first_name

    @@students = []
    def initialize(first_name)
        @first_name = first_name
        @@students << self
    end

    def self.all
        @@students
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end
    
    def self.find_student(name)
        self.all.select do |student|
            student == name
        end
    end

    def grade_percentage
        count, total = 0.0, 0.0
       BoatingTest.all.select do |student|
            student.student == self
        end.each do |tests|
            if tests.status == "passed"
                count += 1
                total += 1
            else
                total += 1
            end
        end
        grade = (count/total)*100
    end
end

