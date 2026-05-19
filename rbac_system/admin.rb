require_relative "employee"

class Admin < Employee
  def show_permissions
    puts "Admin Permissions"
    puts "Create users"
    puts "Delete users"
    puts "Manage all departments"
    puts "View all reports"
  end
end 
