require 'spec_helper'

describe Operator do
  context '#valid?' do
    it 'should return true if is valid operator' do
      ['+', '*'].each do |valid_operator|
        expect(Operator.valid?(valid_operator)).to be(true)
      end
    end

    it 'should return false for operands' do
      (0..9).each do |digit|
        expect(Operator.valid?(digit.to_s)).to be(false)
      end
    end

    it 'should return false for unsupported operators' do
      ['-', '%', '/'].each do |unsupported_operator|
        expect(Operator.valid?(unsupported_operator)).to be(false)
      end
    end
  end

  context '#initialize' do
    it 'should not be able to initialize with an invalid value' do
      expect {Operator.new('1')}.to raise_error('Invalid operator!')
    end
  end

  context '#apply' do
    it 'should apply operator to valid operands and return the result' do
      expect(Operator.new('+').apply(1,1)).to eq(2)
    end
  end
end