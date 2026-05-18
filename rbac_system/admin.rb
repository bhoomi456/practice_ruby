require_relative "employee"

class Admin < Employee
  def show_permissions
    puts "Admin Permissions"
    puts "Create users"
    puts "Delete users"
    puts "Manage all departments"
    puts "View all reports"
  end

  def create
    puts "#{name} created a new user"
  end

  def delete 
    puts "#{name} deleted a user"
  end

  def manage_departments
    puts "#{name} manages all departments"
  end
end 
