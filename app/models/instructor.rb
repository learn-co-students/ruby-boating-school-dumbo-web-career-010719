class Instructor

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << name
    end

    def pass_student(student_name, test_name)
        boat_test = BoatingTest.all.find{ |test| 
        test.student.first_name == student_name and test.test_name == test_name 
        }
        
        if boat_test == nil
            return BoatingTest.new(Student.new(student_name), test_name, "passed", self)
        else
            boat_test.test_status = "passed"
        end

        boat_test
    end

    def fail_student(student_name, test_name)
        boat_test = BoatingTest.all.find{ |test| 
        test.student.first_name == student_name and test.test_name == test_name 
        }
        
        if boat_test == nil
            return BoatingTest.new(Student.new(student_name), test_name, "failed", self)
        else
            boat_test.test_status = "failed"
        end

        boat_test
    end

    def self.all
        @@all
    end
end
