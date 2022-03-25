require 'rspec'
require_relative '../design_patterns/vary_with_template'

# how many different ways are there to flip a fair coin 5


RSpec.describe Jellicle do
  jc = Jellicle.new

  describe 'does something' do

    it 'returns the combination of 5 coin flips withotu 3 in a row' do
      result = jc.firstmethod(5,3)
      expect(result).to eq 25
    end
end
end 
