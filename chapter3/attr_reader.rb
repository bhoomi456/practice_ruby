class Employee 
    attr_reader :employee_id

    def initialize
        #read only value
        @employee_id = 101

    end
end

e = Employee.new
 puts e.employee_id  #Employee ID should be visible but should not be changed.