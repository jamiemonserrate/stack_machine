class Operand
  VALID_OPERANDS = (0..9).collect(&:to_s)

  def initialize(value)
    raise "Invalid operand!" unless self.class.valid? value

    @value = value
  end

  def self.valid?(value)
    value.to_s.chars.all? {|digit| VALID_OPERANDS.include? digit}
  end

  def value
    @value.to_i
  end

  def +(another_operand)
    Operand.new(value + another_operand.value)
  end

  def *(another_operand)
    Operand.new(value * another_operand.value)
  end

  def ==(another_operand)
    self.value == another_operand.value
  end

  def eql?(another_operand)
    self == another_operand
  end

  def hash
    self.another_operand.hash
  end
end