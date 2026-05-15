puts "enter your marks"
marks = gets.chomp.to_i

case marks
when 90..100
  puts "grade A"
when 75..89
  puts "grade B"
when 50..74
  puts "grade C"
when 0..49
  puts "fail"
else
  puts "invalid marks"
end