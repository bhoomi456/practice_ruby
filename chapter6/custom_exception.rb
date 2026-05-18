class InvalidAgeError < StandardError
end

begin
  puts "Enter your age"
  age = gets.chomp.to_i

  raise InvalidAgeError, "Age cannot be negative" if age < 0

  puts "your age is : #{age}"

rescue InvalidAgeError => e
  puts e.message
end

