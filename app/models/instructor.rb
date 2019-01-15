class Instructor
    
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end

    def name
        @name
    end

    def self.all 
        @@all
    end

    def find_student_and_test_name(student1, test_name1, status)
        BoatingTest.all.each do |boatingTest|
            if boatingTest.student == student1 && boatingTest.test_name == test_name1
               boatingTest.test_status=status
               return boatingTest
            end
         end
         BoatingTest.new(Student.new(student1.first_name), test_name1, status, self)
    end

    def pass_student(name, test_name)
        student=Student.find_student(name)
        find_student_and_test_name(student, test_name, "passed")
    end

    def fail_student(name, test_name)
        student=Student.find_student(name)
        find_student_and_test_name(student, test_name, "failed")
    end
    
end