require 'spec_helper'

describe StackMachineEmulator do
  context '#evaluate' do
    it 'should be able to evaluate a single operand with no operations' do
      expect(StackMachineEmulator.new.evaluate('1')).to eq(1)
    end

    it 'should be able to evaluate a simple addition of 2 numbers' do
      expect(StackMachineEmulator.new.evaluate('11+')).to eq(2)
    end

    it 'should be able to evaluate a simple multiplication of 2 numbers' do
      expect(StackMachineEmulator.new.evaluate('22*')).to eq(4)
    end

    it 'should be able to evaluate two operators' do
      expect(StackMachineEmulator.new.evaluate('111++')).to eq(3)
    end
  end
end