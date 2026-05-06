class Student
    def set_data
        # instance variables store object state
        @name ="Bhoomi" #used when each object needs its own personal data
        @course = "MCA"

    end 

    def show_data
        puts @name
        puts @course
    end
end

s= Student.new
s.set_data
s.show_data