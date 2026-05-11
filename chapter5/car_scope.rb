class Car
  # stores all allowed car brands
  @@makes = []

  # stores count of cars for each make using Hash
  @@cars = {}

  # stores total number of all cars created
  @@total_count = 0

  attr_reader :make
  
  # Class methods
  # Returns total number of cars created
  def self.total_count
    @@total_count
  end

  # Used to add a new allowed car make
  def self.add_make(make)

    # Check if make is not already present
    unless @@makes.include?(make)
      @@makes << make

      # Create initial count = 0 for this make
      @@cars[make] = 0
    end
  end

  def initialize(make)

    # check if given make exists in allowed makes
    if @@makes.include?(make)
      puts "creating a new #{make}"

      @make = make
      @@cars[make] += 1
      @@total_count += 1

    else
      raise "no such make : #{make}"
    end
  end

  # Returns how many cars exist
  # of the same make as current object
  def make_mates
    @@cars[self.make]
  end
end

# add alowed car brands
Car.add_make("Honda")
Car.add_make("BMW")

# create new car objects
c1 = Car.new("Honda")
c2 = Car.new("Honda")
c3 = Car.new("BMW")

puts Car.total_count
puts c1.make_mates
# puts c3.make_mates
    





  



   

  