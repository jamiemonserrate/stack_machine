class StackMachineEmulator
  def evaluate(expression_string)
    return expression_string.to_i if expression_string.size == 1
  end
end