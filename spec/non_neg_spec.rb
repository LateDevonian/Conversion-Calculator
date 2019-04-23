require 'rspec'
require_relative '../non_neg/non_neg.rb'

# given a list of non negative integers, arranges
# them is such that they form the largest possible number
# for example, given [50, 2, 1, 9], the largest number is 95210

RSpec.describe Non do
  let(:non) { Non.new }

  describe "it returns the largest number as a string" do

    let(:array) { ["50", "2", "1", "9"] }

    it 'returns the largest possible number' do
      result = non.big_num(array)
      expect(result).to eq '95210'
    end

    it 'handles three digits ' do
      array = ["1", "2", "5", "88", "000"]
      result = non.big_num(array)
      expect(result).to eq '88521000'
    end

    it 'handles all the same number ' do
      array = ["11", "11", "11"]
      result = non.big_num(array)
      expect(result).to eq '111111'
    end

    it 'handles lots of zeros only' do
      array = ["0", "000", "0000"]
      result = non.big_num(array)
      expect(result).to eq '00000000'
    end

    it 'handles small and large' do
      array = ["1", "900", "99999888999999"]
      result = non.big_num(array)
      expect(result).to eq '999999999999888100'
    end

    it 'handles integers' do
      array = [ 1,4, 50, 99999]
      result = non.big_num(array)
      expect(result).to eq "999995410"
    end

    it 'handles integers with lots of zeros' do
      array = [ 1,4, 50, 99999, 100000]
      result = non.big_num(array)
      expect(result).to eq "999995411000000"
    end

    it 'deals with strings' do
      array = [ "a", "c", "d", "c" ]
      result = non.big_num(array)
      expect(result).to eq "dcca"
    end

    it 'deals with strings' do
      array = [ "az", "cf", "dpy", "cw" ]
      result = non.big_num(array)
      expect(result).to eq "zywpfdcca"
    end

  end
end
