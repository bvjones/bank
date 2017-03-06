require 'transaction_history'

describe TransactionHistory do
  subject(:transactionHistory) { described_class.new }

  describe 'initialised' do
    it 'with a transaction_register' do
      expect(subject.transaction_log).to eq([])
    end
  end

end
