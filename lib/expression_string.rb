class ExpressionString
  def initialize(value)
    raise 'Invalid expression string!' unless self.class.valid? value

    @value = value
  end

  def self.valid?(expression_string)
    return false if expression_string.to_s.empty?

    expression_string.chars.all? {|expression_character| Operator.valid?(expression_character) || Operand.valid?(expression_character)}
  end

  def each_expression_character
    @value.chars.each { |expression_character| yield expression_character }
  end
end