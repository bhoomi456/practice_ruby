require_relative "employee"

class Manager < Employee
  def show_permissions
    puts "Manager Permissions"
    puts "View team reports"
    puts "Assign tasks"
    puts "Approve leaves"
    puts "Monitor team Performance"
    puts "Manage project deadlines"
  end
end
