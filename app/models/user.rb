class User < ApplicationRecord
    has_one :bank
    has_one :account
    has_many :treats
    has_secure_password

    def save_treat(item_hash)
        treat = Treat.create(item: item_hash["item"], amount: item_hash["amount"], user: self)
        self.bank.amount -= treat.amount
        self.bank.save
        self.account.amount += treat.amount 
        self.account.save
    end

end
