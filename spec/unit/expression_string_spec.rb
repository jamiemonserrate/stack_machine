require 'spec_helper'

describe ExpressionString do
  context '#valid?' do
    it 'should true if expression string is valid' do
      expect(ExpressionString.valid?('11+')).to eq(true)
    end

    it 'should false if expression string is not valid' do
      expect(ExpressionString.valid?('mj+')).to eq(false)
      expect(ExpressionString.valid?('')).to eq(false)
      expect(ExpressionString.valid?(nil)).to eq(false)
    end

    it 'should return false if expression string is too long' do
      expect(ExpressionString.valid?('1'*1000001)).to eq(false)
    end
  end

  context '#initialize' do
    it 'should not be able to initialize with an invalid value' do
      expect {ExpressionString.new('j')}.to raise_error('Invalid expression string!')
    end
  end

  context '#each_expression_character' do
    it 'should yield a block for each expression character' do
      expression_string = ExpressionString.new('11+')
      expect { |b| expression_string.each_expression_character(&b)}.to yield_successive_args('1', '1', '+')
    end
  end

end