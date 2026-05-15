class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(name, price)
    @items << { name: name, price: price }
    puts "Item: #{name} , Price: #{price}  added successfully"
  end

  def total
    total_price = 0

    @items.each do |item|
      total_price += item[:price]
    end

    puts "Total_price: #{total_price}"
  end

  def checkout
    total_amount = 0

    @items.each do |item|
      total_amount += item[:price]
    end

    tax = calculate_tax(total_amount)
    final_amount = total_amount + tax

    puts "Subtotal: #{total_amount}"
    puts "Tax: #{tax}"
    puts "Final bil: #{final_amount}"
  end

  private

  def calculate_tax(amount)
    amount * 0.05
  end


end

cart = ShoppingCart.new

cart.add_item("Laptop",50000)
cart.add_item("Mouse", 20000)
cart.add_item("Keyboard", 10000)

cart.total
cart.checkout



