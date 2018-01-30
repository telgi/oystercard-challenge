require 'oystercard'

describe OysterCard do

  subject(:card) {described_class.new}

  describe '#balance' do
    it 'has a balance of 0' do
      expect(subject.balance).to eq 0
    end

    it 'cannot exceed maximum value' do
      maximum_balance = OysterCard::DEFAULT_MAXIMUM
      card.top_up(maximum_balance)
      message = "Max balance is #{maximum_balance}. Top-up £90 or less"
      expect { card.top_up(1) }.to raise_error message
    end
  end


  describe '#top_up' do
    it 'can add to balance' do
      expect { card.top_up(1) }.to change { subject.balance }.by 1
    end
  end

  describe '#deduct' do

    it 'can deduct from balance' do
      subject.top_up(20)
      expect { card.deduct(5) }.to change { subject.balance }.by -5
    end
  end

end
