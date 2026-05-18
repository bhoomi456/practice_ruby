puts "Enter a number"
n = gets.to_i
begin
  results = 100/n
rescue
  puts "your nameber didn't work; was it work??"
  exit
end 
puts "100  / #{n} is #{results}"