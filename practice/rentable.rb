module Rentable 
  def rent(days)
    days * rent_per_day
  end
end

class Car
  include Rentable
  attr_reader :brand, :rent_per_day
  def initialize(brand, rent_per_day)
    @brand = brand
    @rent_per_day = rent_per_day
  end
end

class Bike
  include Rentable
  def initialize(brand, rent_per_day)
    @brand = brand
    @rent_per_day = rent_per_day
  end

  def brand
    @brand
  end

  def rent_per_day
    @rent_per_day
  end
end

car1 = Car.new("bmw", 1000)
bike1 = Bike.new("Honda", 500)

puts "car total rent of 5 days is  : #{car1.rent(5)}"
puts "bike total rent of 4 days is  : #{bike1.rent(4)}"