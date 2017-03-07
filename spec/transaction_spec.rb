require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(credit: 100, debit: nil, balance: 100) }

  describe 'initialises with a' do
    it 'with a transaction amount' do
      expect(subject.details[:credit]).to eq 100
    end
    it 'with a balance' do
      expect(subject.details[:balance]).to eq 100
    end
    it 'with a transaction amount' do
      expect(subject.details[:debit]).to eq nil
    end
  end
end
