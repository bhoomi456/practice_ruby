module Loginable
    def login
        puts "Login successful"
    end
end

module StackLike
    def stack
        @stack ||= []
    end

    def add_to_stack(item)
        stack.push(item)
    end

    def take_from_stack
        stack.pop
    end
end

class Customer
    include Loginable
    include StackLike

    def initialize(name, email)
        @name = name
        @email = email
    end
    def customer_info
        puts "Name: #{@name}"
        puts "Email: #{@email}"
    end
end

class PermiumCustomer < Customer

    def initialize(name, email, discount)
        super(name, email)
        @discount = discount
    end
    

    def customer_info
        super
        puts "Discount: #{@discount}%"
    end
end

p = PermiumCustomer.new("Aman", "aman@gmail.com, 20")

p.login
p.customer_info

p.add_to_stack("Shoes")
p.add_to_stack("Watch")
p.take_from_stack
