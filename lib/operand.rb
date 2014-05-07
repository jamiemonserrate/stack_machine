class Operand
  VALID_OPERANDS = (0..9).collect(&:to_s)
  MAX_12_BIT_INTEGER = 4095 #calculated by the formula (2 ** 12) - 1

  def initialize(value)
    raise 'Invalid operand!' unless self.class.valid? value

    @value = value
  end

  def self.valid?(value)
    value.to_s.chars.all? {|digit| VALID_OPERANDS.include? digit} && (value.to_i <= MAX_12_BIT_INTEGER)
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
    self.value.hash
  end
end