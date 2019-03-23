class CashRegister
  
  attr_accessor :total, :discount, :price, :item
  
  def initialize(discount = 0)
    @total = 0
    @discount = 20
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
  self.price = price
    @total = @total + price * quantity
    quantity.times do
    @items << item
    end
  end
  
  def apply_discount
    # if @discount > 0
    #   x = @total * self.discount / 100
    #   @total = @total - x
    if @discount > 0 
      @total *= (100 - discount)/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
end
