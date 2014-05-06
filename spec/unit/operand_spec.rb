require 'spec_helper'

describe Operand do
  context '#valid?' do
    it 'should return true if is valid operand' do
      (0..9).each do |valid_operand|
        expect(Operand.new(valid_operand.to_s).valid?).to be(true)
      end
    end

    it 'should return false if is invalid operand' do
      expect(Operand.new('+').valid?).to eq(false)
    end
  end
end
