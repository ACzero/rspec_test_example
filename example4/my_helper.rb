module MyHelper
  def average_of(array)
    sum = array.reduce(&:+)
    sum.fdiv(array.size)
  end
end
