class User 
    attr_accessor :name, :total_balance, :acount
    def initialize(name, ac)
        @ac = ac
        @name = name
    end

    def total_balance

    end

end


class Bankacount
    attr_accessor :balance
    def initialize(bank, account_number,balance = 0)
        if balance < 0
            raise RangeError, "saldo negativo"
        end
        @bank = bank
        @account_number = account_number
        @balance = balance
    end


    def transfer(amount, account)
        self.balance = self.balance - amount    
        account.balance = account.balance + amount
    end

end
ac1 = Bankacount.new('santander' ,1234,10000)
ac2 = Bankacount.new('chile' ,4321,10000)
p1 = User.new('joaquin',ac1)
p2 = User.new('riquelme',ac2)


pp p1
pp p2



ac1.transfer(5000, ac2)
p1 = User.new('joaquin',ac1)
p2 = User.new('riquelme',ac2)
pp p1
pp p2