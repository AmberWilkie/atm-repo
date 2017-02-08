class Account

attr_accessor :exp_date, :pin_code, :balance, :account_status, :owner

STANDARD_VALIDITY_YRS = 5

 def initialize
   @exp_date = set_exp_date
   @pin_code = generate_pin
   @balance = 0
   @account_status = :active
 end

 def deactivate
   @account_status = :deactivated
 end

private

def set_exp_date
   Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime("%m/%y")
end

def generate_pin
  rand(1000..9999)
end

end
