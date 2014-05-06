class Operator
  VALID_OPERATORS = ['+']

  def initialize(value)
    @value = value
  end

  def valid?
    VALID_OPERATORS.include? @value
  end
end