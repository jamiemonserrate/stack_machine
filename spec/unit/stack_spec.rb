require 'spec_helper'

describe Stack do
  let(:stack) { Stack.new }

  context '#push and #pop' do
    it 'should support push and pop operations' do
      stack.push(Operand.new('1'))
      stack.push(Operand.new('2'))

      expect(stack.pop).to eq(Operand.new('2'))
      expect(stack.pop).to eq(Operand.new('1'))
    end
  end

  context '#initialize' do
    it 'should raise exception if an empty stack is popped' do
      expect { stack.pop }.to raise_error('Nothing to pop!')
    end
  end

  context '#has_more_than_one_element?' do
    it 'should return true if has more than 1 element' do
      stack.push(Operand.new('1'))
      stack.push(Operand.new('1'))

      expect(stack.has_more_than_one_element?).to eq(true)
    end

    it 'should return false if does not have more than 1 element' do
      stack.push(Operand.new('1'))

      expect(stack.has_more_than_one_element?).to eq(false)
    end
  end
end