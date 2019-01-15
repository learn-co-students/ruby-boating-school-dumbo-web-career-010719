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

    def pass_student(name, test_name)
         BoatingTest.all.each do |boatingTest|
             if boatingTest.student.first_name==name && boatingTest.test_name == test_name
                boatingTest.test_status="passed"
                return boatingTest
             end
          end
          return  BoatingTest.new(Student.new(name), test_name, "passed", self)
    end

    def fail_student(name, test_name)
         BoatingTest.all.each do |boatingTest|
             if boatingTest.student.first_name==name && boatingTest.test_name == test_name
                boatingTest.test_status="failed"
                return boatingTest
             end
        end
        return BoatingTest.new(Student.new(name), test_name, "failed", self)
    end
    
end