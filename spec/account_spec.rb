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
  end

  context 'storing and retrieving transactions' do
    it 'should have an array that shows all deposits and withdrawals' do
      expect(account.transactions).to be_an(Array)
    end



  end


end
