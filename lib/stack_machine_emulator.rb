class StackMachineEmulator
  def initialize
    @stack = []
  end

  def evaluate(expression_string)
    return expression_string.to_i if expression_string.size == 1

    expression_string.chars.each do |expression_character|
      @stack.push expression_character.to_i if is_operand?(expression_character)
      apply_operator(expression_character) if is_operator?(expression_character)
    end

    @stack.pop
  end

  private
  def apply_operator(operand)
    @stack.push(@stack.pop.send(operand, @stack.pop))
  end

  def is_operand?(expression_character)
    (0..9).collect(&:to_s).include? expression_character
  end

  def is_operator?(expression_character)
    ['+'].include? expression_character
  end
end