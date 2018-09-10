class BankAccount
    def initialize(balance, interest_rate)
        @balance = balance
        @interest_rate = interest_rate
    end
    def deposit(amount)
        @balance += amount
    end
    def withdraw(amount)
        @balance -= amount
    end
    def gain_interest
        @balance = ((@interest_rate / 100.0) + 1) * @balance
    end
end