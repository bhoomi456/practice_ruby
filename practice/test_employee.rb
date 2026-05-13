require "minitest/autorun"
require_relative "employee_manage"

class TestEmployee < Minitest::Test
  def setup
    @emp1 = Employee.new("Amit", "HR", 40000, 1234)
    @emp2 = Employee.new("Neha", "IT", 60000, 3456)
  end

  def test_name
    assert_equal "Amit", @emp1.name
  end

  def test_department
    assert_equal "HR", @emp1.department
  end

  def test_verify_pin_correct
    output = capture_io do
      @emp1.verify_pin(1234)
    end
    assert_equal "Login successfully\n", output[0]
  end

  def test_verify_pin_wrong
    output = capture_io do
      @emp1.verify_pin(9999)
    end
    assert_equal "Wrong pin\n", output[0]
  end

  def test_compare_salary
    output = capture_io do
      @emp1.compare_salary(@emp2)
    end
    assert_equal "Amit has higher salary\n", output[0]
  end


  
end