class Operator
  VALID_OPERATORS = ['+']

  def initialize(value)
    @value = value
  end

  def valid?
    VALID_OPERATORS.include? @value
  end

  def apply(operand1, operand2)
    operand1.send(@value, operand2)
  end
end