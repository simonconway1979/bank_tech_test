require 'pry'

class Account

def initialize
@balance = 0
@transactions = []
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

def transactions
  @transactions
end

# binding.pry

end
