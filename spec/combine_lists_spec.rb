require 'rspec'
require_relative '../combine_lists/combine_alternative'

RSpec.describe CombineLists do

  # write a function that combines two lists by alternately taking
  # elements. For example given the two lists [a,b,c] and [1,2,3]
  # the function should return [1,b,2,c,3]
  let(:list) { ["1", "2", "3"] }
  let(:list2) { ["a", "b"] }
  let(:com) { CombineLists.new }

  describe 'it adds one list to another' do

    it 'combines two lists' do
      result = com.combine(list, list2)
      expect(result).to eq(["1", "a", "2", "b", "3"])
    end

    it 'returns only the full list if one list is empty' do
      list = []
      result = com.combine(list, list2)
      expect(result).to eq(["a", "b"])
    end

    it 'returns an empty array if only given empty arrays' do
      list = []
      list2 = []
      result = com.combine(list, list2)
      expect(result).to eq([])
    end

    it 'appends list b to list a' do
      result = com.concatinate(list, list2)
      expect(result).to eq(["1", "2", "3", "a", "b"])
    end

    it 'takes arrays and adds them together' do
      result = com.add_array(list, list2)
      expect(result).to eq(["1", "2", "3", "a", "b"])
    end

    it 'returns the value of one if there is an empty array' do
      list2 = []
      result = com.add_array(list, list2)
      expect(result).to eq(["1", "2", "3"])

    end
  end

  describe 'it combines and removes duplicates from two arrays' do
    let(:n) { [ "sylvia", "jane", "charlotte", "anne", "puck"] }
    let(:n2) {[ "sharon", "jane", "catherine", "elizabeth"] }
    let(:result) { com.only_unique(n, n2) }

    it 'combines two lists and removes duplicates' do
      expect(result).to match_array(["sharon", "catherine", "elizabeth","sylvia", "jane", "charlotte", "anne", "puck"])
    end
    it 'does not contain duplicates' do
      expect(result).not_to match_array(["sharon", "jane", "catherine", "elizabeth","sylvia", "jane", "charlotte", "anne", "puck"])
    end

    it 'removes multiple duplicates' do
      n3 = [ "sharon", "jane", "catherine", "elizabeth", "sylvia", "jane", "charlotte", "anne", "puck"]
      result= com.only_unique(n, n3)
      expect(result).to match_array(["sharon", "catherine", "elizabeth","sylvia", "jane", "charlotte", "anne", "puck"])
    end
  end
end
