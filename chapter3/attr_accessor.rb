class Student
    attr_accessor :name, :course #read + write both
end

s = Student.new
s.name = "bhoomi"
s.course = "MCA"

puts s.name
puts s.course