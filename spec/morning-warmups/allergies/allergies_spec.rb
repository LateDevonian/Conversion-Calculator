require 'rspec'
require 'byebug'

require_relative '../../../morning-warmups/allergies/allergy.rb'

RSpec.describe Allergy do

    al = Allergy.new

    describe 'it can tell you if your allergen is on the list'  do 
        it "retrurns false" do
            puts "yo momma"
            result = al.allergic_to?('cats')
            expect(result).to equal(true)
        end

        it 'rteruns false to an invalid allergen' do 
            result = al.allergic_to?('ferrets')
            expect(result).to equal(false)
        end 

        it 'puts into lowercase' do
            result = al. allergic_to?("EGGS")
            expect(result).to equal(true)
        end
    end
    describe 'it tells the score of allergies' do
        it 'validates the score in the scope of the list' do
            result = al.describe_allergies(0)
            expected = "invalid score"
            expect(result).to eq(expected)
        end
    end
end
