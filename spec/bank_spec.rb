require 'bank'

describe Bank do
  let(:bank) { described_class.new }

  describe '#initialise' do
    it 'should initialise with the balance of 0' do
      expect(subject.balance).to be(0)
    end
  end
  describe '#deposit' do
    it 'allows balance to be updated when depositing money' do
      expect{ subject.deposit(100) }.to change{ subject.balance }.by(100)
    end
    it 'does not allow depositing values of 0 or less' do
      expect{ subject.deposit(0) }.to raise_error("You cannot deposit #{0}, as it's 0 or less")
    end
  end
end
