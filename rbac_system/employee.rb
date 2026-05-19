# Problem Statement: Role-Based Access Control (RBAC) System

# A company wants to build an internal employee management system where employees have different access permissions based on their roles.

# The system should support the following roles:

# Admin
# Manager
# Developer
# HR

# Each role should have different permissions and responsibilities inside the system.


require_relative "module_permission"


class Employee
  include Permissions
  attr_reader :name, :employee_id, :department

  def initialize(name, employee_id, department)
    @name = name
    @employee_id = employee_id
    @department = department
    @logged_in = false
  end

  def login
    @logged_in = true
    puts "#{name} Login successfully"
  end

  def logout
    @logged_in = false
    puts "#{name} Logout successfully"
  end

  def display_details
    puts "Name : #{name}"
    puts "Employee id : #{employee_id}"
    puts "Deparment : #{department}"
  end
end
