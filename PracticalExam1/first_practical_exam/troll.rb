#==========================================================
# Type your name and student ID here.
#Rodolfo Andrés Ramírez Valenzuela A01169701
#==========================================================

#==========================================================
# Code for question 1

class Troll
  attr_reader :name, :power
  def initialize(name, power)
    @name = name
    @power = power
  end
  def to_s
    "#{ @name } (#{ @power})"
  end
end

class TrollArmy
  attr_accessor :formation_strategy
  attr_accessor :army

  def initialize
    @army = []
  end

  def add(t)
    @army << t
    self
  end

  def attack
    if formation_strategy == nil
      print "Undefined strategy, cannot attack.\n"
    else
      print "*** Attack formation ***\n"
      @formation_strategy.formation(self)
    end

  end
end

class NameFormationStrategy < TrollArmy
  def formation(context)
    @troll_names = []
    context.army.each do |troll|
      @troll_names << troll.name
    end
    @troll_names = @troll_names.sort
    @troll_army = []

    @troll_names.each do |troll|
      context.army.each do |compareTroll|
        if troll == compareTroll.name
          print "#{compareTroll.name} (#{compareTroll.power})\n"
        end
      end
    end
  end


end

class PowerFormationStrategy < TrollArmy
  def formation(context)
    @new_army = context.army.sort_by {|troll| troll.power}
    i = @new_army.length-1
    until i < 0
      print "#{@new_army[i].name} (#{@new_army[i].power})\n"
      i = i-1
    end

  end
end

#----------------------------------------------------------
# Place here your code for these classes: TrollArmy,
# NameFormationStrategy, and PowerFormationStrategy.
#----------------------------------------------------------
