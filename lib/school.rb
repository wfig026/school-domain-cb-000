# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade, array|
      array.sort!
    end
  end

end
