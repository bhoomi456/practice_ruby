#reopening the array class and create my_map method

class Array
  def my_map
    c = 0
    acc = []  #initializes empty array
    until c == size
      acc << yield(self[c]) # Captures return value from block in accumulator array
      c += 1
    end
    acc 
  end
end

names = ["david", "alan", "black"]
p names.my_map {|name| name.upcase}
