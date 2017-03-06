class Bank
  attr_reader :balance
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def deposit(money)
    raise "You cannot deposit #{money}, as it's 0 or less" if money <= 0
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end

end
