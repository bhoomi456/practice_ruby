def block_local_parameter
  x = 100
  [1,2,3].each do |x|
    puts "parameter x is #{x}"
    x = x+10
    puts "reassigned to x in block; its now #{x}"
  end
  puts "outer x is still same #{x}"
end

block_local_parameter
