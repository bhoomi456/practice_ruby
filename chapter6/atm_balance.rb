balance = 10000
begin
  puts "Enter the amount"
  amount = gets.chomp.to_i

  raise "Amount cannot be Zero" if amount == 0  # creating an exceptions
  raise "Amount cannot be negative" if amount < 0
  raise "Insufficient balance" if amount > balance

  balance = balance - amount
  puts "Remaining balance: #{balance}"

rescue => e  # catching the raised exceptions if any exception occur
  p e.message 
ensure
  puts "thankyou for using ATM"
end