class Dog
  attr_reader :age, :dog_years

  # private setter for dog_years
  def dog_years=(years) 
    @dog_years = years  #store value
  end

  # set normal age
  def age=(years)
    @age = years

    # set dog years automatically
    self.dog_years = years * 7
  end
  
  # cannot call from outside
  private :dog_years=
end

rover = Dog.new
rover.age = 10
puts "Rover is #{rover.dog_years} in dog year"

