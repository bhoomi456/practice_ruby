class Employee
    def set_name(name)
        #each object gets seperate instance variable value
        @name = name
    end
    def show_name
        puts @name
    end
end
#show each object has seperate state
e1 = Employee.new 
e2 = Employee.new

e1.set_name("Bhoomi")
e2.set_name("Rahul")

e1.show_name
e2.show_name