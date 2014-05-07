require 'spec_helper'

describe StackMachineEmulator do
  let(:stack_machine_emulator) { StackMachineEmulator.new }
  
  context '#evaluate' do
    it 'should be able to evaluate a single operand with no operations' do
      expect(stack_machine_emulator.evaluate('1')).to eq(1)
    end

    it 'should be able to evaluate a simple addition of 2 numbers' do
      expect(stack_machine_emulator.evaluate('11+')).to eq(2)
    end

    it 'should be able to evaluate a simple multiplication of 2 numbers' do
      expect(stack_machine_emulator.evaluate('22*')).to eq(4)
    end

    it 'should be able to evaluate two operators' do
      expect(stack_machine_emulator.evaluate('111++')).to eq(3)
    end

    it 'should be able to evaluate a complex operation' do
      expect(stack_machine_emulator.evaluate('13+62*7+*')).to eq(76)
    end

    context 'failure scenarios' do
      it 'should return -1 in case the expression is invalid' do
        expect(stack_machine_emulator.evaluate('11++')).to eq(-1)
      end

      it 'should return -1 in case expression contains invalid characters' do
        expect(stack_machine_emulator.evaluate('mj+')).to eq(-1)
      end

      it 'should return -1 in case expression is empty' do
        expect(stack_machine_emulator.evaluate('')).to eq(-1)
      end

      it 'should return -1 in case expression is nil' do
        expect(stack_machine_emulator.evaluate(nil)).to eq(-1)
      end
    end

  end
end