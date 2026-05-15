password = ""
until password == "ruby123"
  puts "Enter password"
  password = gets.chomp
end
puts "login successfully"