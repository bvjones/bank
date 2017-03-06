require 'bank'

describe Bank do
  let(:bank) { described_class.new }

  describe '#initialise' do
    it 'should initialise with the balance of 0' do
      expect(subject.balance).to be(0)
    end
  end
  describe '#deposit' do
    it 'allows bank account to recieve a value' do
      expect(subject).to respond_to(:deposit).with(1).argument
    end
    it 'allows balance to be updated when depositing money' do
      expect{ subject.deposit(100) }.to change{ subject.balance }.by(100)
    end
  end
end
