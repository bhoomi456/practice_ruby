class ATM
	attr_reader :name
	def initialize(name, pin)
		@name = name
		@pin = pin
	end

	def verify_pin(entered_pin)
		
		#private method is calling without receiver
		if entered_pin == pin
			puts "#{name}, Acess granted"
		else
			puts "Wrong pin"
		end
	end

	private

	def pin
		@pin
	end
end

user1 = ATM.new("Rahul", 1234)
user1.verify_pin(1234)
user1.verify_pin(2345)

