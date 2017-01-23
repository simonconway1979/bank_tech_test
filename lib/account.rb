require 'pry'

class Account

  def initialize
  @balance = 0
  @transactions = []
  @formatted_transactions
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount
    date = Time.now.strftime("%d/%m/%Y")
    @transactions << [date, amount, balance]
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
    update_formatted_transactions
    @formatted_transactions
  end

  # date       || credit || debit   || balance
  # 14/01/2012 ||        || 500.00  || 2500.00
  # 13/01/2012 || 2000.00||         || 3000.00
  # 10/01/2012 || 1000.00||         || 1000.00

  def update_formatted_transactions
    @formatted_transactions = ["date       || credit  || debit   || balance"]

    @transactions.each do |transaction|
      amount_string = '%.02f' % transaction[1].abs
      balance_string = '%.02f' % transaction[2]
      trailing_spaces = " " * (8 - amount_string.length)
      if transaction[1] >= 0
        formatted_text = transaction[0]+" || " + amount_string + trailing_spaces + "||         || " + balance_string
        @formatted_transactions << formatted_text
      else
        formatted_text = transaction[0]+" ||         || " + amount_string + trailing_spaces + "|| " + balance_string
        @formatted_transactions << formatted_text
      end
    end
  end

  def historical_deposit(date, amount)
    @balance += amount
    @transactions << [date, amount, balance]
  end

  def historical_withdrawal(date, amount)
    withdrawal_valid(amount)
    @balance -= amount
    @transactions << [date, -amount, balance]
  end

  def statement
    update_formatted_transactions
    output = "\n      "
    @formatted_transactions.each do |text|
      output << text + "\n      "
    end
    puts output
  end

  private

  def withdrawal_valid(amount)
    fail "Your balance is not sufficient to make this withdrawal" if amount > @balance
  end

  account = Account.new
  account.historical_deposit("10/01/2012", 1000)
  account.historical_deposit("13/01/2012", 2000)
  account.historical_withdrawal("14/01/2012", 500)

  binding.pry

end
