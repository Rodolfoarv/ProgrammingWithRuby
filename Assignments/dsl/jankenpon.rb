#References

#http://docs.ruby-lang.org/en/2.0.0/Hash.html
#http://www.dan-manges.com/blog/ruby-dsls-instance-eval-with-delegation
#http://thirtysixthspan.com/posts/simple-internal-dsl-in-ruby
#https://shvets.github.io/blog/2013/11/16/two_simple_ruby_dsl_examples.html

$winners = {"Spock Lizard" => {winner: "Lizard", loser:"Spock", action:"poisons"}}







class DSL
  def show(player1, player2)
    puts player1
    puts player2
  end
end

class Symbol
  def self.get_key(adversary)
  end

  def self.+(adversary)
  end

  def self.-(adversary)
  end
end


class Spock

  def self.get_key(adversary)
    key = ""
    if self.to_s > adversary.to_s
      key = "".concat("#{self} #{adversary}")
    else
      key = "".concat("#{adversary} #{self}")
    end
  end

  def self.+(adversary)
    key = get_key(adversary)
    winner = $winners[key][:winner]
    action = $winners[key][:action]
    loser = $winners[key][:loser]
    puts "#{winner} #{action} #{loser} (winner #{winner})"
    winner
  end

  def self.-(adversary)

  end

  def to_s
    "Spock"
  end

end

class Lizard
  def scissors
  end

  def paper
  end

  def rock
  end

  def lizard

  end

  def spock
  end

  def self.+ (adversary)

  end

  def self.- (adversary)

  end
end

def show(expr)
  puts "Result = #{expr}"
end

show(Spock + Lizard)
