require 'account.rb'



describe Account do

  subject(:account) {described_class.new}

  it 'should have a method to show initial balance of 0'do
    expect(account.balance).to eq(0)
  end

  it 'should increase the balance when the user makes a deposit' do
    account.deposit(10)
    expect(account.balance).to eq(10)
  end


end
