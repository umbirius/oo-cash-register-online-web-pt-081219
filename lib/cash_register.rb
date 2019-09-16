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
    self.total += price*(1-discount)
  end 
  
end 