class BoatingTest
  attr_reader :student, :instructor
  attr_accessor :name, :status

  @@all = []

  def initialize(student, name, status, instructor)
    @student = student
    @instructor = instructor
    @name = name
    @status = status
    @@all << self
  end

  def self.all
    @@all
  end
end
