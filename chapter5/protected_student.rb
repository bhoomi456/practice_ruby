class Employee
  attr_reader :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end
   
  def compare_salary(other_employee)
    if other_employee.salary > salary
      puts "#{other_employee.name} salary is greater"
    else
      puts "#{@name} salary is greater or same"
    end
  end

  protected :salary   #it cannot be accessed directly from outside, but employees of the same class can compare it.

end

emp1 = Employee.new("Amit", 67000)
emp2 = Employee.new("Neha", 55000)

emp2.compare_salary(emp1)


