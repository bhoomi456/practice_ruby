require_relative "employee"
require_relative "admin"
require_relative "manager"
require_relative "developer"
require_relative "hr"

emp1 = Employee.new("bhoomi", 101, "HR")

# emp1.login
# emp1.display_details
# emp1.logout

manager = Manager.new("David", 122, "IT")
admin = Admin.new("bhoomi", 101, "HR")
dev = Developer.new("priya", 108, "Sales")
hr = Hr.new("raj", 123, "HR")
# admin.show_permissions
# admin.create
# admin.delete
# admin.manage_departments

employees = [admin, manager, dev, hr]

employees.each do |employee|
  puts "-------------------------"

  employee.display_details
  employee.login
  employee.show_permissions
  employee.logout
end
