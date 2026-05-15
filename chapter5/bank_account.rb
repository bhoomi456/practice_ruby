class BankAccount
  attr_reader :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    puts "#{amount} is deposited"
  end

  def withdraw(amount)
    if sufficient_balance?(amount)
      @balance -= amount
      puts "#{amount} withdraw"
    else
      puts "insufficint amount"
    end
  end

  def show_balance
    puts "remaining balance: #{@balance}"
  end

  private 
  def sufficient_balance?(amount)
    @balance >= amount
  end
end

account = BankAccount.new("BHoomi",0)
account.deposit(5000)
account.withdraw(2000)
account.show_balance
