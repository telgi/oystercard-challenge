require 'oystercard'

describe OysterCard do

  subject(:card) {described_class.new}
  let(:balance) {0}

  describe '#balance' do
    it 'has a balance of 0' do
      expect(subject.balance).to eq 0
    end

    it 'cannot exceed maximum value' do
      maximum_balance = OysterCard::DEFAULT_MAXIMUM
      subject.top_up(91)
      expect {subject.top_up(91)}.to raise_error "#{maximum_balance} Please only top-up £90 or below"
    end
  end


  describe '#top_up' do
    it 'can add to balance' do
      expect { subject.top_up 1 }.to change { subject.balance }.by 1
    end
  end

end
