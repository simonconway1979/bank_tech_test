require 'account.rb'



describe Account do

  subject(:account) {described_class.new}

  it 'should have a method to show initial balance of 0'do
  expect(account.balance).to eq(0)
  end

  it 'should have a method to make a deposit' do

  end


end
