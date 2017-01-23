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
  withdrawal_valid(amount)
  @balance -= amount
  @transactions << [Time.now.strftime("%d/%m/%Y"), -amount, balance]
end

def transactions
  @transactions
end

def historical_deposit(date, amount)
  @balance +=amount
  @transactions << [date, amount, balance]
end

private

def withdrawal_valid(amount)
  fail "Your balance is not sufficient to make this withdrawal" if amount > @balance
end


# binding.pry

end
