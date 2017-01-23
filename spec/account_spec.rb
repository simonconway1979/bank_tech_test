require 'account.rb'

describe Account do

it 'should have a balance of 0'do
account = Account.new
expect(account.balance).to eq(0)
end

end
