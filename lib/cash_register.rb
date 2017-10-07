class CashRegister
  attr_accessor :total :discount

  def initialize(employee_discount = nil)
    @total = 0
  end
end
