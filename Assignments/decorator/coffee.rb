# Decorator Pattern
# Date: 16-Mar-2016
# Authors:
#          Rodolfo Andrés Ramírez Valenzuela


class Beverage
  def initialize
  end

  def description
  end

  def cost
  end
end

class Espresso < Beverage

  def initialize
    @name = "Espresso"
    @cost = 1.99
  end

  def description
    @name
  end

  def cost
    @cost
  end
end


class DarkRoast < Beverage

  def initialize
    @name = "Dark Roast Coffee"
    @cost = 0.99
  end

  def description
    @name
  end

  def cost
    @cost
  end
end

class HouseBlend < Beverage

  def initialize
    @name = "House Blend Coffee"
    @cost = 0.89
  end

  def description
    @name
  end

  def cost
    @cost
  end
end

class CondimentDecorator < Beverage
  def initialize (beverage)
    @beverage = beverage
  end

end

class Mocha < CondimentDecorator
  def initialize(beverage)
    @beverage = beverage
    @name = beverage.description + ", Mocha"
    @cost = 0.20+ beverage.cost
  end

  def description
    @name
  end

  def cost
    @cost
  end
end


class Whip < CondimentDecorator
  def initialize(beverage)
    @beverage = beverage
    @name = beverage.description + ", Whip"
    @cost = 0.10 + beverage.cost
  end

  def description
    @name
  end

  def cost
    @cost
  end
end


class Soy < CondimentDecorator
  def initialize(beverage)
    @beverage = beverage
    @name = beverage.description + ", Soy"
    @cost = 0.15 + beverage.cost
  end

  def description
    @name
  end

  def cost
    @cost
  end
end

class Milk < CondimentDecorator
  def initialize(beverage)
    @beverage = beverage
    @name = beverage.description + ", Milk"
    @cost = 0.10 + beverage.cost
  end

  def description
    @name
  end

  def cost
    @cost
  end
end
