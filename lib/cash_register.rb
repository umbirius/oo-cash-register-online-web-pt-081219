class CashRegister 
  
  attr_accessor :discount, :total, :items, :price
  
  def initialize(discount = 0) 
    @total = 0 
    @items = []
    @discount = discount
  end 
  
  def total 
    @total
  end 
  
  def add_item(title, price, qty = 1)
    self.total += price*qty
    @items << title
  end 
  
  def apply_discount 
    if @discount > 0 
      @to_take_off = (price*discount)/100
      self.total -= @to_take_off
      puts "After the discount, the total comes to $#{total}"
    else 
      puts "There is no discount to apply."
    end 
  end 
  
  def items 
    @items 
  end 
  
  def void_last_transaction 
    @items.pop
    @total -= @price
  end 
  
end 