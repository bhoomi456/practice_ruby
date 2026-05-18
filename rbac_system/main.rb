require_relative "employee"
require_relative "admin"

emp1 = Employee.new("bhoomi", 101, "HR")

emp1.login
emp1.display_details
emp1.logout

admin = Admin.new("bhoomi", 101, "HR")
admin.show_permissions
admin.create
admin.delete
admin.manage_departments