class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(new_name, grade)
     @roster[grade] ||= [] #if we already used a grade key we would accidently erase its contents before adding another name so have to use ||= to set condition that if the specific grade key already exists it wont set it back equal to an empty array 
     @roster[grade] << new_name
  end 
  
  def grade(new_grade)
    @roster[new_grade]
  end
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
     end
   sorted
  end
end
    