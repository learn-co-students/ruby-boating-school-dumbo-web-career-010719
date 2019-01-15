require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

stud1 = Student.new('John')
stud2 = Student.new('Yesol')
stud3 = Student.new('Jenny')

tea1 = Instructor.new('ES')
tea2 = Instructor.new('SY')
tea3 = Instructor.new('HN')
tea4 = Instructor.new('EK')

bt1 = BoatingTest.new('John', 'aaa', 'yyyy', 'ES')
bt2 = BoatingTest.new('John', 'bbb', 'xxxx', 'SY')
bt3 = BoatingTest.new('John', 'ccc', 'zzzz', 'EK')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
