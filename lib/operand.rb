class Operand
  VALID_OPERANDS = (0..9).collect(&:to_s)

  def initialize(value)
    @value = value
  end

  def valid?
    VALID_OPERANDS.include?(@value.to_s)
  end

  def value
    @value.to_i
  end

  def +(another_operand)
    value + another_operand.value
  end
end