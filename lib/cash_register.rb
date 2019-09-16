class CashRegister 
  
  attr_accessor :discount, :total, :items
  
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
      @discount.to_f 
      self.total 
      puts "After the discount, the total comes to #{dis_total}"
    else 
      puts "There is no discount to apply."
    end 
  end 
  
  def items 
    @items 
  end 
  
  def void_last_transaction 
    @items.pop
    @total 
  end 
  
end 