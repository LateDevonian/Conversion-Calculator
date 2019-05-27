require 'rspec'
require_relative '../../rspec_excercises/mountain/lib/skier'
require_relative '../../rspec_excercises/mountain/lib/trail_map'


module Mountain
  RSpec.describe Skier do
    it 'gets tired after skiing a difficult slope' do
      trail_map = instance_double(TrailMap, difficulty: :expert)

      skier = Skier.new
      skier.ski_on('Last Hoot')
      expect(skier).to be_tired
    end
  end
end
