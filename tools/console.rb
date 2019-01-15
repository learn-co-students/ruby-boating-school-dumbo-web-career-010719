require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kat = Student.new("Kat")
ez = Student.new("Ez")

puff = Instructor.new("Puff")
coach = Instructor.new("Coach")

test2 = ez.add_boating_test("Test2", "failed", puff)
test1 = kat.add_boating_test("Test1", "Now", puff)
test3 = kat.add_boating_test("Test3", "passed", coach)

kat.add_boating_test("Test3.5", "passed", coach)
kat.add_boating_test("Test4", "failed", coach)
kat.add_boating_test("Test5", "failed", coach)
kat.add_boating_test("Test6", "failed", coach)
kat.add_boating_test("Test7", "passed", puff)
kat.add_boating_test("Test8", "failed", coach)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

