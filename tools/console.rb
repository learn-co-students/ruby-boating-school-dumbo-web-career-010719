require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


stud1 = Student.new("Cassidy")
stud2 = Student.new("Shivani")
stud3 = Student.new("Liz")

inst1 = Instructor.new("Prince")
inst2 = Instructor.new("Helen")
inst3 = Instructor.new("Mar")

test1 = BoatingTest.new(stud1, "Level 1", "Incomplete", inst1)
test2 = BoatingTest.new(stud2, "Level 2", "Passed", inst2)
test3 = BoatingTest.new(stud2, "Level 3", "Incomplete", inst3)
test4 = BoatingTest.new(stud1, "Level 1", "Passed", inst1)
test4 = BoatingTest.new(stud1, "Level 3", "Passed", inst3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
