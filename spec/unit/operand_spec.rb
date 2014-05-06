require 'spec_helper'

describe Operand do
  context '#valid?' do
    it 'should return true if is valid string operand' do
      (0..9).each do |valid_operand|
        expect(Operand.valid?(valid_operand.to_s)).to be(true)
      end
    end

    it 'should return true if is valid numeric operand' do
      (0..9).each do |valid_operand|
        expect(Operand.valid?(valid_operand)).to be(true)
      end
    end

    it 'should return true if is more than single digit operand' do
      expect(Operand.valid?('12')).to be(true)
    end

    it 'should return false if is invalid operand' do
      expect(Operand.valid?('+')).to eq(false)
      expect(Operand.valid?('1+')).to eq(false)
    end
  end

  context '#initialize' do
    it 'should not be able to initialize with an invalid value' do
      expect {Operand.new('+')}.to raise_error("Invalid operand!")
    end
  end

  context '#equals' do
    it 'should return true if objects have same value' do
      expect(Operand.new('1')).to eq(Operand.new('1'))
    end

    it 'should return false if objects have different value' do
      expect(Operand.new('1')).to_not eq(Operand.new('2'))
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

  context '#+' do
    it 'should be able to add 2 operands' do
      expect(Operand.new('1') + Operand.new('1')).to eq(Operand.new(2))
    end
  end

  context '#*' do
    it 'should be able to multiply 2 operands' do
      expect(Operand.new('2') * Operand.new('2')).to eq(Operand.new(4))
    end
  end
end
