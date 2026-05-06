class BankAccount
    def initialize(name, balance)
        # object gets state at creation time
        @name = name
        @balance = balance

    end
    def show_details
        puts @name
        puts @balance
    end
end

b = BankAccount.new("Bhoomi", 50000)
b.show_details