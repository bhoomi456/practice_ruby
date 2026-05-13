module HospitalHelper
  def welcome_message
    puts "Welcome to city hospital"
  end
end

class Doctor
  def initialize(name, specialization, salary, doctor_id, experience)
    @name = name
    @specialization = specialization
    @salary = salary
    @doctor_id = doctor_id
    @experience = experience
  end

  def doctor_details
    

  private :doctor_id
  protected :salary