class StackMachineEmulator
  FAILURE_CODE = -1

  def initialize
    @stack = Stack.new
  end

  def evaluate(expression_string)
    return FAILURE_CODE unless ExpressionString.valid?(expression_string)

    ExpressionString.new(expression_string).each_expression_character do |expression_character|
      begin
        if Operand.valid?(expression_character)
          @stack.push Operand.new(expression_character)
        elsif Operator.valid?(expression_character)
          @stack.push Operator.new(expression_character).apply(@stack.pop, @stack.pop)
        end
      rescue
        return FAILURE_CODE
      end
    end

    return FAILURE_CODE if @stack.has_more_than_one_element?

    @stack.pop.value
  end
end