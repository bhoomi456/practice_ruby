require "minitest/autorun"
require_relative "rentable"

class TestRentable < Minitest::Test
  def setup
    @car1 = Car.new("BMW", 1000)
    @bike1 = Bike.new("Honda", 500)
  end

  def test_car_brand
    assert_equal "BMW", @car1.brand
  end

  def test_bike_brand
    assert_equal "Honda", @bike1.brand
  end
  
  def test_car_rent_per_day
    assert_equal 1000, @car1.rent_per_day
  end

  def test_bike_rent_per_day
    assert_equal 500, @bike1.rent_per_day
  end

  def test_total_car_rent
    assert_equal 4000, @car1.rent(4)
  end

  def test_total_bike_rent
    assert_equal 2500, @bike1.rent(5)
  end

end
