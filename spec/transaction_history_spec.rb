require 'transaction_history'

describe TransactionHistory do
  subject(:transaction_history) { described_class.new }

  describe 'initialised' do
    it 'with a transaction_register' do
      expect(subject.transactions).to eq([])
    end
  end

  describe '#display' do
    it 'will output all transactions in the transactions array' do
      
    end
  end

end
