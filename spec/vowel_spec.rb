require 'rspec'
require_relative '../vowel_square/vowel_square'

# # have a function take  a parameter passed with is a 2d matrix of arbitrary size filled with
# the letters from the alphabet, and determine if a 2*2 square composed entirely of vowels
# exists in in the matrix.
# abcd
# eikr
# oufj

RSpec.describe VowelSquare do

  vs = VowelSquare.new

  describe "it checks to see whether there is a vowelsqure in an array of vowels" do

    let(:matrix) { [ 'abcd','eikr','oufj'] }

     it 'returns a positive if there is a square of 4 vowels' do
       matrix = ['ae', 'fj']
      result = vs.is_vowelsquare?(matrix)
      expect(result).to eq true
    end
  end
end
