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
  @transactions << [Time.now.strftime("%d/%m/%Y"), amount, balance]
end

def withdrawal(amount)
  @balance -= amount
  @transactions << [Time.now.strftime("%d/%m/%Y"), -amount, balance]
end

def transactions
  @transactions
end

# binding.pry

end
