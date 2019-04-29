# write a program that outputs all possibilities to put + or - or nothing
#  between the numbers 1, 2, ...9(in this order) such that the result
#is always 100
#  for example 1 + 2 + 34 -5 + 67 -8 =9 = 100
require 'rspec'
require_relative '../possibilities/poss'

RSpec.describe Possible do
    let(:pos) { Possible.new }

    describe 'outputs all possibilities' do

      it 'has 11 results from 1 to 100' do
        result = pos.possibility
        expect(result.count).to eq 11
      end

      it 'formats the results as strings showing the workings' do
        result = pos.possibility
        expect(result[0]).to eq("1+2+3-4+5+6+78+9")
      end
    end
end
