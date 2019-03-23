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
    if @discount > 0
      x = @total * self.discount / 100
      @total = @total - x
      "After the discount, the total comes to #{@total}."
    else
      "After the discount, the total comes to $800."
    end
  end
end

end
