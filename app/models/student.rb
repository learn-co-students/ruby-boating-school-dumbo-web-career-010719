class Student
    @@all=[]

    def initialize(first_name)
        @first_name=first_name
        @@all=self
    end

    def first_name
        @first_name
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self,test_name, test_status, instructor)
    end

    def self.find(name)
        @@all.find {|student| student.first_name==name}
    end

    def grade_percentage
        pass_count=0.0
        student_count=0.0
        BoatingTest.all.each do |boatTest|
      
            if boatTest.student == self
                student_count+=1
               
                if boatTest.test_status == "passed"
                    pass_count+=1
              
                end
            end
        end
         avg=pass_count/student_count
    end
end