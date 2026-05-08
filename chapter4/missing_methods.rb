class Student
    def initialize(name)
        @name = name
    end
    def method_missing(name, *args)

        #handle only specific methods
        if name == :marks
            puts "#{@name}'s marks are 85"

        elsif name == :attendence
            puts "#{@name}'s attendance is 92%"
        else
            # send unknown methods back to ruby
            super
        end
    end
end

s = Student.new("Bhoomi")
s.marks
s.attendence
