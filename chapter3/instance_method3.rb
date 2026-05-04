class Student 
    def set_name
        @name = "bhoomi"
    end

    def show_name
        puts @name
    end
end

s=Student.new
s.set_name
s.show_name