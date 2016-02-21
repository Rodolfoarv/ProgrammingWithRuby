#==========================================================
# Type your name and student ID here.
#Rodolfo Andrés Ramírez Valenzuela A01169701
#==========================================================
#==========================================================
# Code for question 2

#----------------------------------------------------------
# Place here your code for the Twitter class.
#----------------------------------------------------------
require "observer"
class Twitter
  include Observable

  def initialize(name)
    @name = name
  end

  def tweet(message)
    print "#{@name} just tweeted: #{message}\n"
    changed
    notify_observers(@name, message)
  end

  def follow(name)
    name.add_observer(self)
    self
  end

  def update(name,message)
    print "#{@name} received a tweet from #{name}: #{message}\n"
    self
  end
end
