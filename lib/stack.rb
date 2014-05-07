class Stack
  def initialize
    @stack = []
  end

  def push(value)
    @stack.push(value)
  end

  def pop
    raise 'Nothing to pop!' if @stack.empty?

    @stack.pop
  end

  def has_more_than_one_element?
    @stack.size > 1
  end
end