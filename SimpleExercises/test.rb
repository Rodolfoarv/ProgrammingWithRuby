city = 'Washington'
temp_f = 84
puts ("The city is #{city}")

a = []
a << 55
a << 44
a.sort!
puts(a)
puts(a.sort)

/old/ =~ 'this old house'


class BankAccount
  def initialize(account_owner)
    @owner = account_owner
    @balance = 0
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def balance()
    @balance
  end

  def balance=(new_balance)
    @balance = new_balance
  end
end

class SelfCentered
  def talk_about_me
    puts("Hello I am #{self}")
  end
end

conceited = SelfCentered.new
conceited.talk_about_me

class InterestingBearingAccount < BankAccount
  def initialize(owner,rate)
    super(owner)
    @rate = rate
  end

  def deposit_interest
    @balance += @rate * @balance
  end
end

def add_students(*names)
  for student in names
    puts("Adding student #{student}")
  end
end

module HelloModule
  def say_hello
    put('hello out there')
  end
end

class TryIt
  include HelloModule
end

tryit = TryIt.new
tryit.say_hello

add_students("Fred Smith", "Bob Tranner")



my_account = BankAccount.new('Russ')
my_account.balance = 100
puts(my_account.balance)
