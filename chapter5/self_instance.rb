class C
   
  #instance method 
  def x
    puts " class C, method x:"

    # In an instance method, self becomes the object that called this method
    puts self
  end
end

c = C.new
C.x
puts "That was a call to x by: #{c}"
