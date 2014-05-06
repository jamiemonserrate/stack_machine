require 'spec_helper'

describe StackMachineEmulator do
  context '#evaluate' do
    it 'should be able to evaluate a single operand with no operations' do
      expect(StackMachineEmulator.new.evaluate("1")).to eq(1)
    end
  end
end