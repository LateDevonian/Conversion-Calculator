require 'rspec'
require_relative '../code_snippets/grokking/grokking_examples'

RSpec.describe GrokkingExamples do
  let(:grok) { GrokkingExamples.new }
  let(:list) { [4,7,12,18,33,66,88,99] }

  describe 'it does a binary search on an array' do

    it 'finds the item place in the array' do
      item = 99 
      result = grok.binary_search(list, item)
      expect(result).to be(true)
    end
    
    it 'fails when the item is not in the array' do
        item = 3
        result = grok.binary_search(list, item)
        expect(result).to be(nil)
    end

  end
end