class School
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] ? self.roster[grade] << name : self.roster[grade] = [name]
  end

  def grade(num)
    self.roster[num]
  end

  def sort
    self.roster.each do |grade, name|
      self.roster[grade] = self.roster[grade].sort
    end
  end
end
