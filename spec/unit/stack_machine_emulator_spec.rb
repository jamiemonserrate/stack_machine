require 'spec_helper'

describe StackMachineEmulator do
  context '#evaluate' do
    it 'should be able to evaluate a single operand with no operations' do
      expect(StackMachineEmulator.new.evaluate('1')).to eq(1)
    end

    it 'should be able to evaluate a simple addition of 2 numbers' do
      expect(StackMachineEmulator.new.evaluate('11+')).to eq(2)
    end
  end
end