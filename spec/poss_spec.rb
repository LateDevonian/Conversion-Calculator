# write a program that outputs all possibilities to put + or - or nothing
#  between the numbers 1, 2, ...9(in this order) such that the result
#is always 100
#  for example 1 + 2 + 34 -5 + 67 -8 =9 = 100
require 'rspec'
require_relative '../possibilities/poss'

RSpec describe Possible do
    let(:pos) { Possible.new }

    describe 'outputs all possibilities' do

      it 'provides a list of possibilites that add up to 100' do
        result = pos.possibility
        expect(result).to eq ("i have no idea how to do this yet")

      end

    end


end
