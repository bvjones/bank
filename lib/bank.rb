require_relative 'transaction_history'
require_relative 'transaction'
require_relative 'statement_printer'

class Bank
  attr_reader :balance, :transaction_history
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = TransactionHistory.new
    @statement_printer = StatementPrinter.new
  end

  def deposit(money)
    raise "You cannot deposit £#{money}, as it's £0 or less" if money <= 0
    @balance += money
    @transaction_history.transactions << Transaction.new(credit: money, debit: nil, balance: @balance).details
  end

  def withdraw(money)
    raise "You cannot withdraw £#{money}, as your balance will be less than £0" if (@balance - money) < 0
    @balance -= money
    @transaction_history.transactions << Transaction.new(credit: nil, debit: money, balance: @balance).details
  end

  def print
    @statement_printer.display_statement(@transaction_history.transactions)
  end
end
