class ExpressionString
  def self.valid?(expression_string)
    return false if expression_string.to_s.empty?

    expression_string.chars.all? {|expression_character| Operator.valid?(expression_character) || Operand.valid?(expression_character)}
  end
end