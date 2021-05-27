require 'rspec'
require 'byebug'

require_relative '../../../morning-warmups/allergies/allergy.rb'

RSpec.describe Allergy do

    al = Allergy.new

    describe 'it can tell you if your allergen is on the list'  do 
        it "retrurns false" do
            puts "yo momma"
            result = al.allergic_to?('cats')
            expect(result).to equal(false)
        end
    end
end
