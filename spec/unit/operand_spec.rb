require 'spec_helper'

describe Operand do
  context '#valid?' do
    it 'should return true if is valid string operand' do
      (0..9).each do |valid_operand|
        expect(Operand.new(valid_operand.to_s).valid?).to be(true)
      end
    end

    it 'should return true if is valid numeric operand' do
      (0..9).each do |valid_operand|
        expect(Operand.new(valid_operand).valid?).to be(true)
      end
    end

    it 'should return false if is invalid operand' do
      expect(Operand.new('+').valid?).to eq(false)
    end
  end

  context '#value' do
    it 'should return an integer value of a string that can be used to perform arithmetic operations' do
      (0..9).each do |numeric_operator|
        expect(Operand.new(numeric_operator.to_s).value).to be(numeric_operator)
      end
    end

    it 'should return the integer value that can be used to perform arithmetic operations' do
      (0..9).each do |numeric_operator|
        expect(Operand.new(numeric_operator).value).to be(numeric_operator)
      end
    end
  end
end
