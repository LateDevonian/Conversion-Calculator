require 'rspec'
require_relative '../sums/compute_sum'

RSpec.describe Compute_sum do

  let(:subject) { [3, 4, 5, 6, 7, 8, 9, 122] }
  let(:computation) { Compute_sum.new }

  describe 'first_reduce' do
    it 'computes the sum numbers in a given list' do
      result = computation.first_reduce(subject)
      expect(result).to eq(164)
    end
  end

  describe 'second_reduce' do
    it 'computes the sum of numbers in a given list' do
      result = computation.second_reduce(subject)
      expect(result).to eq(164)
    end

    it 'does not equal a random number' do
      result = computation.second_reduce(subject)
      expect(result).not_to eq(64)
    end

  end

  describe 'third_recursion' do

    it 'computes the sum of numbers in a given list' do
      result = computation.third_recursion(subject)
      expect(result).to eq(164)
    end
    it 'accepts but does not sum an empty array' do
      subject = []
      result = computation.third_recursion(subject)
      expect(result).to eq(0)
    end
  end

  describe 'factorial_single' do
    it 'computes a factorial for the given list' do
      subject = 7
      result = computation.factorial_single(subject)
      expect(result).to eq(5040)
    end

    it 'returns 1  when zero added' do
        subject = 0
        result = computation.factorial_single(subject)
        expect(result).to eq(1)
    end
  end

  describe 'far_to_cel' do
    it 'converts fahrenheit to celcuis' do
      subject = 90
      result = computation.far_to_cel(subject)
      expect(result).to eq(32)
    end

    it 'converts a zero to celcuis' do
      subject = 0
      result = computation.far_to_cel(subject)
      expect(result).to eq(-18)
    end
  end

  describe 'cel_to_far' do
    it 'converts celcuis to fahrenheit' do
      subject = 26
      result = computation.cel_to_far(subject)
      expect(result).to eq(78)
    end

    it 'converts a zero to fahrenheit' do
      subject = 0
      result = computation.cel_to_far(subject)
      expect(result).to eq(32)
    end
  end

  describe 'decide_leap_year' do
    it 'correctly determines a leap year' do
      subject = 2020
      result = computation.decide_leap(subject)
      expect(result).to be(true)
    end

    it 'correctly determines its not a leap year' do
      subject = 1987
      result = computation.decide_leap(subject)
      expect(result).to be(false)
    end

    it 'correctly determines a weird number is not a leap year' do
      subject = 1900
      result = computation.decide_leap(subject)
      expect(result).to be(false)
    end

    it 'correctly determines an edge case leap year' do
      subject = 2000
      result = computation.decide_leap(subject)
      expect(result).to be(true)
    end
  end



end
