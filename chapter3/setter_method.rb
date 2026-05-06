class Employee
    def salary=(amount) #used when values need updating later
        #setter method updates value 
        @salary = amount
    end
    def salary
        @salary
    end
end

e = Employee.new
e.salary = 50000
puts e.salary