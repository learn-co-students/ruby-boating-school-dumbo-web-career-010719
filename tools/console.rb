require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
student1 = Student.new("Bob")
student2 = Student.new("Joe")
student3 = Student.new("Pat")

instructor1 = Instructor.new("Prince")
instructor2 = Instructor.new("Helen")
instructor3 = Instructor.new("Mar")

BoatingTest.new(student1, "Test1", "passed", instructor1)
BoatingTest.new(student2, "Test2", "passed", instructor1)
BoatingTest.new(student2, "Test3", "failed", instructor2)
BoatingTest.new(student2, "Test4", "passed", instructor2)
BoatingTest.new(student3, "Test5", "failed", instructor3)

binding.pry
 #leave this here to ensure binding.pry isn't the last line
