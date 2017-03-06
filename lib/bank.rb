require_relative 'transaction_history'

class Bank
  attr_reader :balance, :transaction_history
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = TransactionHistory.new
  end

  def deposit(money)
    raise "You cannot deposit £#{money}, as it's £0 or less" if money <= 0
    @balance += money
    @transaction_history.transactions << { type: :debit, value: money, date: Time.new.strftime("%d/%m/%Y") }
  end

  def withdraw(money)
    raise "You cannot withdraw £#{money}, as your balance will be less than £0" if (@balance - money) < 0
    @balance -= money
    @transaction_history.transactions << { type: :credit, value: money, date: Time.new.strftime("%d/%m/%Y") }
  end
end
