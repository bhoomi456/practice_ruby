#reopening the Integer class 
class Integer
  #creating our own method for my_times
  def my_times
    c=0
    until c == self #its run until c == self here self = current object 
      yield(c) # its send the current value of c to the block
      c += 1
    end
    self  #its returning original integer i.e 5
  end
end

puts 5.my_times {|i| puts i}  #so here self = 5 until its run c == self i.e c == 5

puts "==============="

puts 5.times {|i| puts i}  #times is the instance method of Integer built in class