require 'account.rb'



describe Account do

  subject(:account) {described_class.new}

  context 'Adding and withdrawing money' do
    it 'should have a method to show initial balance of 0'do
      expect(account.balance).to eq(0)
    end

    it 'should increase the balance when the user makes a deposit' do
      account.deposit(10)
      expect(account.balance).to eq(10)
    end

    it 'should decrease the balance when the user makes a withdrawal' do
      account.deposit(10)
      account.withdrawal(5)
      expect(account.balance).to eq(5)
    end

    it 'should report an error if a withdrawal is larger than the remaining balance' do
      expect{account.withdrawal(5)}.to raise_error "Your balance is not sufficient to make this withdrawal"
    end
  end

  context 'storing and retrieving transactions' do
    it 'should have an array that shows all deposits and withdrawals' do
      expect(account.transactions).to be_an(Array)
    end

    it 'should add a transaction including the date and amount when a deposit is made' do
      account.deposit(10)
      expect(account.transactions[-1]).to eq([(Time.now.strftime("%d/%m/%Y")), 10, 10])
    end

    it 'should add a transaction including the date and amount when a withdrawal is made' do
      account.deposit(10)
      account.withdrawal(5)
      expect(account.transactions[-1]).to eq([(Time.now.strftime("%d/%m/%Y")), -5, 5])
    end
  end

  context 'Adding historical transactions' do
    it 'should be able to add a historical deposit including the date and time of the transaction' do
      account.historical_deposit("13/01/2012", 2000)
      expect(account.transactions[-1]).to eq(["13/01/2012", 2000, 2000])
    end

    it 'should be able to add a historical withdrawal including the date and time of the transaction' do
      account.historical_deposit("13/01/2012", 2000)
      account.historical_withdrawal("14/01/2012", 500)
      expect(account.transactions[-1]).to eq(["14/01/2012", -500, 1500])
    end
  end

  context 'Printing a statement' do
    it 'should have an array for transactions formatted for print' do
            expect(account.formatted_transactions).to be_an(Array)
    end

    it 'should add a formatted transaction when a deposit is made' do
      account.historical_deposit("13/01/2012", 2000)
      expect(account.formatted_transactions).to eq(
      "
      date       || credit || debit   || balance
      13/01/2012 || 2000.00||         || 2000.00
      ")
    end



    # it 'should be able to print a statement of historical transactions in the correct format' do
    #   account.historical_deposit("10/01/2012", 1000)
    #   account.historical_deposit("13/01/2012", 2000)
    #   account.historical_withdrawal("14/01/2012", 500)
    #   expect(account.statement).to eq("date       || credit || debit   || balance
    #   14/01/2012 ||        || 500.00  || 2500.00
    #   13/01/2012 || 2000.00||         || 3000.00
    #   10/01/2012 || 1000.00||         || 1000.00")
    # end
  end

end
