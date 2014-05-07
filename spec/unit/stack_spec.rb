require 'spec_helper'

describe Stack do
  it 'should support push and pop operations' do
    stack = Stack.new

    stack.push(Operand.new('1'))
    stack.push(Operand.new('2'))

    expect(stack.pop).to eq(Operand.new('2'))
    expect(stack.pop).to eq(Operand.new('1'))
  end

  it 'should raise exception if an empty stack is popped' do
    expect { Stack.new.pop }.to raise_error('Nothing to pop!')
  end
end