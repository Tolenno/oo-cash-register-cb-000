class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    self.items << "#{title * quantity}"
  end

  def apply_discount
    if @discount != nil
      @total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
end
