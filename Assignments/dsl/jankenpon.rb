#References

#http://docs.ruby-lang.org/en/2.0.0/Hash.html
#http://www.dan-manges.com/blog/ruby-dsls-instance-eval-with-delegation
#http://thirtysixthspan.com/posts/simple-internal-dsl-in-ruby
#https://shvets.github.io/blog/2013/11/16/two_simple_ruby_dsl_examples.html

$winners = {"Spock Lizard" => {winner: "Lizard", loser:"Spock", action:"poisons"},
          "Spock Spock" => {winner: "Spock"},
          "Spock Rock" => {winner: "Spock", loser:"Rock", action:"vaporizes"},
          "Spock Paper" => {winner: "Paper", loser:"Spock", action:"disproves"},
          "Spock Scissors" => {winner: "Spock", loser:"Scissors", action:"smashes"},

          #Scissors
          "Scissors Paper" => {winner: "Scissors", loser:"Paper", action:"cut"},
          "Scissors Lizard" => {winner: "Scissors", loser:"Lizard", action:"decapitate"},
          "Scissors Rock" => {winner: "Rock", loser:"Scissors", action:"crushes"},
          "Scissors Scissors" => {winner: "Scissors"},

          #Rock
          "Rock Paper" => {winner: "Paper", loser:"Rock", action:"covers"},
          "Rock Lizard" => {winner: "Rock", loser:"Lizard", action:"crushes"},
          "Rock Rock" => {winner: "Rock"},

          #Paper
          "Paper Lizard" => {winner: "Lizard", loser:"Paper", action:"eats"},
          "Paper Paper" => {winner: "Paper"},

          #Lizard
          "Lizard Lizard" => {winner: "Lizard"}}


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
    key = get_key(adversary)
    winner = $winners[key][:winner]
    action = $winners[key][:action]
    loser = $winners[key][:loser]
    puts "#{winner} #{action} #{loser} (loser #{loser})"
    winner
  end

  def to_s
    "Spock"
  end

end

class Scissors

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
    key = get_key(adversary)
    winner = $winners[key][:winner]
    action = $winners[key][:action]
    loser = $winners[key][:loser]
    puts "#{winner} #{action} #{loser} (loser #{loser})"
    winner
  end

  def to_s
    "Scissors"
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
