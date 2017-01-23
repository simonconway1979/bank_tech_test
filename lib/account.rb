require 'pry'

class Account

def initialize
@balance = 0
@transactions = []
@formatted_transactions = ["date       || credit || debit   || balance"]
end


# date       || credit || debit   || balance
# 14/01/2012 ||        || 500.00  || 2500.00
# 13/01/2012 || 2000.00||         || 3000.00
# 10/01/2012 || 1000.00||         || 1000.00

def balance
  @balance
end

def deposit(amount)
  @balance += amount
  date = Time.now.strftime("%d/%m/%Y")
  @transactions << [date, amount, balance]
    # binding.pry
  #@formatted_transactions << date + "||        ||" +
end

def withdrawal(amount)
  withdrawal_valid(amount)
  @balance -= amount
  @transactions << [Time.now.strftime("%d/%m/%Y"), -amount, balance]
end

def transactions
  @transactions
end

def formatted_transactions
  @formatted_transactions
end


def historical_deposit(date, amount)
  @balance +=amount
  @transactions << [date, amount, balance]
end

def historical_withdrawal(date, amount)
  withdrawal_valid(amount)
  @balance -= amount
  @transactions << [date, -amount, balance]
end




private

def withdrawal_valid(amount)
  fail "Your balance is not sufficient to make this withdrawal" if amount > @balance
end



end
