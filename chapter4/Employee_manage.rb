#reusable login features
module Loginable
    def login
        puts "Login Successful"
    end
end

#parent class
class Employee
    include Loginable
    def initialize(name, department, salary)  #It runs automatically when we create an object 
        @name = name   #stores data for each object.
        @department = department
        @salary = salary
    end
    def show_details
        puts "name: #{@name}"
        puts "department: #{@department}"
        puts "salary: #{@salary}"
    end
    def salary_info
        puts "Base salary: #{@salary}"
    end
end

class Manager < Employee
    def initialize(name, department, salary, bonus)
        super(name, department, salary)
        @bonus = bonus
    end

    def salary_info
        super
        puts "bonus: #{@bonus}"
    end
end

m = Manager.new("Bhoomi", "IT", 50000, 10000)
m.login
m.show_details
m.salary_info
