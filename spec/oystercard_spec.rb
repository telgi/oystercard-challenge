require 'oystercard'

describe OysterCard do
  it 'has a balance of 0' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do
    it 'can add to balance' do
      # expect(subject.top_up(10)).to eq 10
      expect { subject.top_up 1 }.to change { subject.balance }.by 1 
    end
  end

end
