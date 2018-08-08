require './dice.rb'

describe Dice do
  it { is_expected.to respond_to :roll }

  it { is_expected.to respond_to :num_die }

  it { is_expected.to respond_to :roll_results }

  it 'Set num_die to 1 by default' do
    expect(subject.num_die).to eq 1
  end

  it '#roll should return an integer between 1-6.' do
    expect(subject.roll[0].between?(1, 6) && subject.roll[0].is_a?(Integer)).to eq true
  end

  it 'The output of #roll should be randomly picked.' do
    expect(subject).to receive(:roll).and_return(3)
    expect(subject.roll).to eq 3
  end

  it 'Should allow the user to roll numerous dice at the same time.' do
    dice = Dice.new(3)
    expect(dice.roll.length).to eq 3
  end
end