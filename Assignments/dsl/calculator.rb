module DSL
  def self.enable(klass, &block)
    container = klass.new
    container.instance_eval(&block)
  end
end

class Calculator

  def initialize
    self.stack = []
  end

  def push value
    stack.push value
  end

  def add
    calculate { stack.pop + stack.pop }
  end

  def subtract
    calculate { stack.pop - stack.pop }
  end

  def multiply
    calculate { stack.pop * stack.pop }
  end

  def divide
    calculate do
      a = stack.pop
      b = stack.pop
      b / a
    end
  end

  private

    attr_accessor :stack

    def calculate &block
      result = block.call
      stack.push result
      return result
    end

end
