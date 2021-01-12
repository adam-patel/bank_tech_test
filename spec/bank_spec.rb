require 'bank'

describe Account do

  it 'exists' do
    account = Account.new
    expect(account).to be_instance_of Account
  end

  it 'has a balance' do
    account = Account.new
    expect(account.balance).to eq("Your balance is 0")
  end

  it 'can accept deposits' do
    account = Account.new
    account.deposit(10)
    expect(account.balance).to eq("Your balance is 10")
  end

  it 'allows withdrawals' do
    account = Account.new
    account.deposit(10)
    expect(account.balance).to eq("Your balance is 10")
    account.withdraw(10)
    expect(account.balance).to eq("Your balance is 0")
  end

  it 'the balance updates with every transaction' do
    account = Account.new
    account.deposit(10)
    account.deposit(30)
    account.withdraw(15)
    expect(account.balance).to eq("Your balance is 25")
  end

  it 'balance cannot go below zero' do
    account = Account.new
    account.deposit(10)
    account.withdraw(15)
    expect(account.balance).to eq("Your balance is 10")
  end

  it 'can record transactions' do
    account = Account.new
    account.deposit(10)
    expect(account.history[0].amount).to eq(10)
  end

  

end
