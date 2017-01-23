require 'account.rb'
# require 'pry'

describe Account do

it 'should have a balance of 0'do
account = Account.new
expect(account.balance).to eq(0)
end

# binding.pry

end
