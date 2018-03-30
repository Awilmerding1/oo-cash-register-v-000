class CashRegister
  attr_accessor :total, :discount, :item_array, :item, :item_array, :price, :quantity


  def initialize(*discount)
   @total = 0
   @discount = discount[0]
   @item_array = []
  end

  def add_item(item, price, quantity=1)
    @item = item
    @price = price
    @quantity = quantity
    @total += price*quantity
    @item << self.item
  end

  def apply_discount
    if self.discount
    discount_percentage = 1 - @discount/100.00
    @total *= discount_percentage
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def items
  self.add_item(item, price, quantity=1)
  @item_array << self.item
@item_array
end


def void_last_transaction
   @total
end

end
