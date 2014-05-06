class StackMachineEmulator
  def initialize
    @stack = []
  end

  def evaluate(expression_string)
    return expression_string.to_i if expression_string.size == 1

    expression_string.chars.each do |expression_character|
      @stack.push Operand.new(expression_character) if Operand.valid?(expression_character)
      @stack.push Operator.new(expression_character).apply(@stack.pop, @stack.pop) if Operator.valid?(expression_character)
    end

    @stack.pop.value
  end
end