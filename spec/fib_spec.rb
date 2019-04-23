
# write a function that computes the list of the first fibonacci numbers
# by definition the first two numbers in the f sequence are 0 and 1 and
# each subsequent number is the sum of the previous two
# as an example, here are the first numbers:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

require 'rspec'
require_relative '../fibonacci/fibonacci'

RSpec.describe Fibonacci do

  let(:fibo) { Fibonacci.new }

  describe "generates fibonacci numbers" do
    it 'creates the fibonnaci number given a number' do
      n = 7
      result = fibo.fib(n)
      expect(result).to eq 13

    end

    it 'returns an array of fibbonacci numbers' do
      subject = 10
      result = fibo.fib_array(subject)
      expect(result).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
    end


  end
end
