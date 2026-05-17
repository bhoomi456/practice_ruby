
array = [1,2,3,4,5]
class Array
  def my_each
    c = 0
    until c == size
      
      yield(self[c])
      c += 1
    end
    self
  end
end

array = [1,2,3,4,5]
array.my_each {|i| puts "the block just got handed #{i}"}

