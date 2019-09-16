class CashRegister 
  
  attr_accessor :discount, :total
  
  def initialize(discount = 0) 
    @total = 0 
    @discount = discount
  end 
  
  def total 
    @total
  end 
  
  def add_item(title, price, qty = 1)
    self.total += price*qty
  end 
  
  def apply_discount 
    self.total * 
  end 
  
end 