require 'pry'

class Account

def initialize
@balance = 0
end

def balance
  @balance
end

def deposit(amount)
  @balance += amount
end

def withdrawal(amount)
  @balance -= amount
end

# binding.pry

end
