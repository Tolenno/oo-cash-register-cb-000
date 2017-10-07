class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    if @discount != nil
      @total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There was no discount to apply"
    end
  end
end
