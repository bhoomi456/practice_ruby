class Student

    #this method sets the instance variable @name
    #@name belongs to the current object (self)
  def set_name
    @name = "Bhoomi"
  end

  #this method prints the value of @name
  def show_name
    puts @name
  end
end

#creating a new object
s = Student.new

#calling method to assign name
s.set_name

#calling method to print name
s.show_name