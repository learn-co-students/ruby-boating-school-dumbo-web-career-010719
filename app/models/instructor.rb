class Instructor

    attr_accessor :instructor
    @@teachers = []
    def initialize(name)
        @instructor = name
        @@teachers << self
    end

    def self.all
        @@teachers
    end

    def pass_student(student, test_name)
        BoatingTest.all.select do |tests|
            tests.student == student && tests == test_name
        end.each do |test|
            test.status = "passed"
        end
    end

    def fail_student(student, test_name)
       test_group = BoatingTest.all.select do |tests|
            tests.student == student && tests == test_name
        end
        if test_group != []
            test_group.each do |test|
                test.status = "failed"
            end
        else
            student.add_boating_test(test_name.test_name, "failed", self)
        end
    end
end
