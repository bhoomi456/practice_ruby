#Employee Management system :- employee details, verify pin, salary comprison

class Employee
  attr_reader :name, :department

  def initialize(name, department, salary, pin)
    @name = name
    @department = department
    @salary = salary
    @pin = pin
  end
  
  def salary=(new_salary)
    @salary = new_salary
  end

  def verify_pin(entered_pin)
    # private method called without reciever
    if entered_pin == pin
      puts "Login successfully"
    else
      puts "Wrong pin"
    end
  end

  def compare_salary(other_employee)
    # calling protected method on other object
    if other_employee.salary > salary
      puts "#{@name} has higher salary"
    else
      puts "#{@name} has higher salary"
    end
  end

  def salary
    @salary
  end

  private
  def pin
    @pin
  end

  protected :salary
end

emp1 = Employee.new("Amit", "HR", 40000, 1234)
emp2 = Employee.new("Neha", "IT", 50000, 3456)

#private method is using indirectly
emp1.verify_pin(1234)


emp1.salary = 60000

# protected method is using through same class object
emp1.compare_salary(emp2)
