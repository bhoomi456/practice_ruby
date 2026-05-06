class Employee
    #used when vaue should be visible but not changeable
    attr_reader :employee_id

    #used for sensitive values. Can set password but cannot read it directly
    attr_writer :password

    #both getter+setter created automatically
    attr_accessor :name, :department

    #initialize runs automatically with Employee.new is called
    def initialize(employee_id, name, department, salary)
        @employee_id = employee_id
        @name = name
        @department = department

        self