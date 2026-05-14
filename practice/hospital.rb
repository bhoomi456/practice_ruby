module HospitalHelper
  def welcome_message
    puts "Welcome to city hospital"
  end
end

class Doctor
  include HospitalHelper

  attr_reader :name
  def initialize(name, specialization, salary, doctor_id, experience)
    @name = name
    @specialization = specialization
    @salary = salary
    @doctor_id = doctor_id
    @experience = experience
  end

  def doctor_details
    puts "Name : #{@name}"

    unless @specialization.empty?
      puts "specialization : #{@specialization}"
    else
      puts "specialization not assigned"
    end

    puts "Experience : #{@experience}"

    if @experience > 10
      puts "Senior Doctor"
    elsif @experience > 5
      puts "Mid level Doctor"
    else
      puts "junior Doctor"
    end
  end

  def compare_salary(other_doctor)
    # calling protected method on other object
    if other_doctor.salary > salary
      puts "#{other_doctor.name} has higher salary"
    else
      puts "#{@name} has higher salary"
    end
  end

  def update_salary(new_salary)
    if new_salary < 0
      puts "Invalid salary"
    else
      @salary = new_salary
      puts "Salary updated successfully"
    end
  end

  private
  def doctor_id
    @doctor_id
  end

  protected
  def salary
    @salary
  end
end

doc1 = Doctor.new("Dr. Amit", "Cardiology", 80000, 101, 12)

doc2 = Doctor.new("Dr. Riya", "Neurology", 95000, 102, 8)

doc1.welcome_message

doc1.doctor_details
# doc2.doctor_details

doc1.compare_salary(doc2)

doc1.update_salary(98000)