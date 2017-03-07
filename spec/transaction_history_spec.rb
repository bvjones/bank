require 'transaction_history'

describe TransactionHistory do
  subject(:transaction_history) { described_class.new }

  describe 'initialised' do
    it 'with a transaction_register' do
      expect(subject.transactions).to eq([])
    end
  end
end
