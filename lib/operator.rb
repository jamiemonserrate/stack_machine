class Operator
  VALID_OPERATORS = %w(+ *)

  def initialize(value)
    raise 'Invalid operator!' unless self.class.valid? value

    @value = value
  end

  def self.valid?(value)
    VALID_OPERATORS.include? value
  end

  def apply(operand1, operand2)
    operand1.send(@value, operand2)
  end
end