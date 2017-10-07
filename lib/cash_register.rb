class CashRegister
  attr_accessor :total :discount

  def initialize(discount = nil)
    @total = 0
    @discoutn = discount
  end
end
