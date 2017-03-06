require 'bank'

describe Bank do
  let(:bank) { described_class.new }

  describe '#initialise' do
    it 'should initialise with the balance of 0' do
      expect(subject.balance).to be(0)
    end
  end
end
