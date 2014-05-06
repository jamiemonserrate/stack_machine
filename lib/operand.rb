class Operand
  VALID_OPERANDS = (0..9).collect(&:to_s)

  def initialize(value)
    @value = value
  end

  def valid?
    VALID_OPERANDS.include?(@value)
  end
end