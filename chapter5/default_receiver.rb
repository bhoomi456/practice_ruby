class Employee
    
  def name
    "Bhoomi"
  end

  def show 
    # no receiver written here
    puts name
  end
end

e = Employee.new
e.show