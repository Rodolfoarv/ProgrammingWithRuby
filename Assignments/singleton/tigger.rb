

#Another option

class Tigger
  @@instance = Tigger.new

  def to_s
    return "I'm the only one!"
  end

  def roar
    'Grrr!'
  end

  def self.instance
    return @@instance
  end

  private_class_method :new

end
