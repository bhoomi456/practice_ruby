class Employee
    def salary=(amount)
        # validation inside setter method
        if  amount > 0
            @salary = amount
        else
            puts "Invalid salary"
        end
    end

    def salary
        @salary
    end
end

e = Employee.new
e.salary = -1000