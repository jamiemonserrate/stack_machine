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
  end

end