require 'spec_helper'

describe Operator do
  context '#valid?' do
    it 'should return true if is valid operator' do
      expect(Operator.new('+').valid?).to be(true)
    end

    it 'should return false for operands' do
      (0..9).each do |digit|
        expect(Operator.new(digit.to_s).valid?).to be(false)
      end
    end

    it 'should return false for unsupported operators' do
      ['-', '%', '/'].each do |unsupported_operator|
        expect(Operator.new(unsupported_operator).valid?).to be(false)
      end
    end
  end

  context '#apply' do
    it 'should apply operator to valid operands and return the result' do
      expect(Operator.new('+').apply(1,1)).to eq(2)
    end
  end
end