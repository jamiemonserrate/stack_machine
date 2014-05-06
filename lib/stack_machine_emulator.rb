class StackMachineEmulator
  def initialize
    @stack = []
  end

  def evaluate(expression_string)
    return expression_string.to_i if expression_string.size == 1

    expression_string.chars.each do |expression_character|
      @stack.push expression_character.to_i if Operand.new(expression_character).valid?
      apply_operator(expression_character) if Operator.new(expression_character).valid?
    end

    @stack.pop
  end

  private
  def apply_operator(operator)
    @stack.push(Operator.new(operator).apply(@stack.pop, @stack.pop))
  end
end