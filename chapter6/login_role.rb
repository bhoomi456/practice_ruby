puts "enter your role"
role = gets.chomp

case role
when "admin"
  puts "Full access"
when "manager"
  puts "Limited access"
when "employee"
  puts "basic access"
else
  puts "invalid role"
end
