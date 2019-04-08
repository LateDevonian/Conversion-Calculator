require 'rspec'
require_relative '../sums/compute_volumes'


RSpec.describe ComputeVolumes do

  let(:cylinder_m) { {radius: 5, height: 20 } }
  let(:square_m) { {length: 4, width: 4} }
  let(:box_m) { {length: 2, width: 4, height: 6} }
  let(:circle_m) { { radius: 3} }

  let(:volume) { ComputeVolumes.new }

  describe 'it computes a shape volume' do

    it 'calculates the volume of a cube' do
      result = volume.volume_cube(square_m)
      expect(result).to eq(64)
    end

    it 'calculates the volume of a box' do
      result = volume.volume_box(box_m)
      expect(result).to eq(48)
    end


    it 'calculates the volume of a sphere' do
      result = volume.volume_sphere(circle_m)
      expect(result).to eq(113.1)
    end

    it 'calculates the volume of a cylinder' do
      result = volume.volume_cylinder(cylinder_m)
      expect(result).to eq(1570.8)
    end
  end
  describe 'an error is returned when the incorrect measurements are sent' do

    it 'returns an error if there is no cylinder radius' do
      subject = { height: 4 }
      #wrap it in a block to catch the error
      expect{ volume.volume_cylinder(subject) }.to raise_error(ArgumentError)
    end

    it 'returns an error if there is no cylinder length' do
      subject = { radius: 4 }
      #wrap it in a block to catch the error
      expect{ volume.volume_cylinder(subject) }.to raise_error(ArgumentError)
    end

    #need to add all the variations
    it "returns and error if the cube is missing a measurement"
    it 'returns an error if the box is missing the height'
    it 'returns an error if the box is missing a length'
    it 'returns an error if the box is missing width'
    it 'reruns a null if the data is in the wrong format'
    it 'handles decimal places'

  end
end
