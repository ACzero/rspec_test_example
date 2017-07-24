class Order
  def initialize(warehouse, amount)
    if warehouse.has_enough?(amount)
      warehouse.remove(amount)
      @valid = true
    else
      @valid = false
    end
  end

  def valid?
    !!@valid
  end
end
