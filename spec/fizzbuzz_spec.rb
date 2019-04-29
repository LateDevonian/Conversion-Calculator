require 'rspec'
require_relative '../fizzbuzz/fizzbuzz'

# write a program that prints the numbers from 1 to 100
# but for multiples of 3 print fizz instead of the number and for the
# multiples of five print buzz. for numbers which are multiples of 5 and three
# print fizzbuzz.

RSpec.describe Fizzbuzz do

  fb = Fizzbuzz.new

  describe "it returns fizzbuzz given any integer" do
    it 'returns fizz when number only divisible by 3' do
      result = fb.is_fizzbuzz(9)
      expect(result).to eq("fizz")
    end

    it 'returns buzz when number only divisible by 5' do
      result = fb.is_fizzbuzz(25)
      expect(result).to eq("buzz")
    end

    it 'returns fizzbuzz when number divisible by 3 and 5' do
      result = fb.is_fizzbuzz(15)
      expect(result).to eq("fizzbuzz")
    end

    it 'returns the given number when number is neither 3 or 5' do
      result = fb.is_fizzbuzz(11)
      expect(result).to eq(11)
    end
  end

  describe 'it prints 100 numbers with fizz and buzz' do
    it 'puts an array of fizzbuzz' do
      result = fb.fb
      expect(result).to eq("fizzbuzz")
    end
  end

end
