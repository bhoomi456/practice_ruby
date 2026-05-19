require_relative "employee"

class Hr < Employee
  def show_permissions
    puts "HR permissions"
    puts "Manage Employee Records"
    puts "Approve onboarding"
    puts "process leaves request"
  end
end
