# Adapter Pattern
# Date: 02-Mar-2016
# Authors:
#          A01169701 Rodolfo Andrés Ramírez Valenzuela
#


class QueueAdapter

  def initialize(q)
    @adaptee = q
  end

  def push(x)
    if @adaptee.empty?
      @adaptee.insert(x)
    else
      iterateArray = 0
      value = []
      value.push(x)
      @adaptee.insert(value[0])
      # print @adaptee.size
      while iterateArray < @adaptee.size
        value.push(@adaptee.remove)
        @adaptee.insert(value[iterateArray])
        iterateArray = iterateArray + 1
      end
    end
    self
  end

  def pop()
    if @adaptee.empty?
      nil
    else
      iterateArray = 0
      value = []
      while iterateArray < @adaptee.size
        value.push(@adaptee.remove)
        @adaptee.insert(value[iterateArray])
        iterateArray = iterateArray + 1
      end
      value.push(@adaptee.remove)
      value[0]
    end
  end

  def peek()
    if @adaptee.empty?
      nil
    else
      iterateArray = 0
      value = []
      while iterateArray < @adaptee.size
        value.push(@adaptee.remove)
        @adaptee.insert(value[iterateArray])
        iterateArray = iterateArray + 1
      end
      value[0]
    end
  end

  def empty?
    @adaptee.empty?
  end

  def size
    @adaptee.size
  end

end
