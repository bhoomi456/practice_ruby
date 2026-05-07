# Module for reusable printing features
module Printable

    # method inside module
    def print_id_card
        puts "Printing Employee ID card"
    end
end

#Employee class using module
class Employee
    #include add module methods inside class
    include Printable
end

#creating object
emp = Employee.new

#calling module method
emp.print_id_card