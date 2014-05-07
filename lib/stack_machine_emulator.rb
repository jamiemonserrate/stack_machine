class StackMachineEmulator
  def initialize
    @stack = []
  end

  def evaluate(expression_string)
    expression_string.chars.each do |expression_character|
      if Operand.valid?(expression_character)
        @stack.push Operand.new(expression_character)
      elsif Operator.valid?(expression_character) and @stack.size >= 2
        @stack.push Operator.new(expression_character).apply(@stack.pop, @stack.pop)
      else
        return -1
      end
    end

    @stack.pop.value
  end
end