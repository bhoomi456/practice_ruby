require_relative "employee"

class Developer < Employee
  def show_permissions
    puts "Developer Permissions"
    puts "View Assigned Tasks"
    puts "Update task status "
    puts "Submit work logs"
  end
end