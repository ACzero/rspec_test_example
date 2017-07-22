module Calculator
  class << self
    def is_odd?(number)
      unless number.instance_of?(Fixnum) && number.integer?
        raise ArgumentError.new('number must be integer')
      end

      number % 2 != 0
    end
  end
end
