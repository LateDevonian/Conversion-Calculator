require 'rspec'
require_relative '../coin/coinflips'

# how many different ways are there to flip a fair coin 5
#times and not have three
# or more heads in a row?
#how about 10 to the 10 times
#and not have 534 or more heads in a row?

RSpec.describe Coinflips do
  cf = Coinflips.new

  describe 'tests coinflip using the equation method' do

    it 'returns the combination of 5 coin flips withotu 3 in a row' do
      result = cf.coinflip(5,3)
      expect(result).to eq 25
    end

    xit 'returns the combination of coin flips' do
      result = cf.coinflip(3 ,2)
      expect(result).to eq 5
    end

    it 'has not implemented teh 10 to 10 with 534 yet'
  end

  describe 'tests coinflip using the recursion method' do

    xit 'returns the combination of 5 coin flips withotu 3 in a row' do
      result = cf.coinrec(5,3)
      expect(result).to eq 25
    end

    xit 'returns the combination of coin flips' do
      result = cf.coinrec(3 ,2)
      expect(result).to eq 5
    end
  end
end
