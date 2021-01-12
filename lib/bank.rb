

class Account

attr_accessor :balance, :history

def initialize
	@balance = 0
	@history = []
end

def deposit(amount)
	start_balance = @balance
	@balance += amount
	end_balance = @balance
	record(amount, start_balance, end_balance)
end

def withdraw(amount)
	start_balance = @balance
	@balance -= amount
	if @balance < 0
		@balance += amount
		end_balance = @balance
		print 'Balance not high enough. Action rejected.'
	else
	end_balance = @balance
	end
	record(amount, start_balance, end_balance)
end

def statement
    # as much as it pains me not to complete the task, i can't remember how to iterate throug the array without googling it  :()
end

def balance
	return 'Your balance is ' + @balance.to_s
end

def record(amount, start_balance, end_balance)
	 if start_balance > end_balance
	 	@history << Transaction.new("withdrawal", amount)
	 elsif start_balance < end_balance
	 	@history << Transaction.new("deposit", amount)
	 end
end



end

class Transaction

	attr_accessor :amount, :date, :type

	def initialize(string, amount)
		@amount = amount
		@type = string
		@date = Time.now
	end

end
