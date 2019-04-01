require 'rspec'
require_relative '../sums/compute_areas'

RSpec.describe ComputeAreas do

  let(:subject) { {length: 4, width: 2, height_depth: 5,
    radius: 3.3, axis_a: 2, axis_b: 6,
     metric: true } }

  let(:area) { ComputeAreas.new }

  describe 'given the measurments of a rectangle' do
    it 'calculates the area of a square' do
      subject = { length: 4, width: 4 }
      result = area.rectangle(subject)
      expect(result).to eq(16)
    end

    it 'calculates the area of a rectangle' do
      result = area.rectangle(subject)
      expect(result).to eq(8)
    end

    it 'returns error if there is no length' do
      subject = { width: 4 }
      #wrap it in a block to catch the error
      expect{ area.rectangle(subject) }.to raise_error(ArgumentError)
    end

    it 'returns error if there is no width'
    #   subject = { length: 4 }
    #   result = area.rectangle(subject)
    #   expect(result).to eq("Cannot compute, please supply correct measurements!")
    #
    # end
    #
    it 'calcuates the area of a triangle' do
      result = area.triangle(subject)
      expect(result).to eq(10)
    end

    it 'calculates the area of a circle' do
      result = area.circle_area(subject)
      expect(result).to eq(34.21)
    end

    it 'calculates the area of an ellipse' do
       result = area.ellipse_area(subject)
       expect(result).to eq(37.7)
     end
    # it 'combines the total areas into a single sum' do
    #   result = area.combine_square(subject)
    #   expect(result).to eq(1)
    # end

  # end

  describe 'volume_calculations' do

    it 'calculates the volume of a cube' do
      subject = { length: 4, width: 4 }
      result = area.volume_cube(subject)
      expect(result).to eq(4096)
    end

    it 'caluculates the surface area of a sphere'
    #   result = area.surface_sphere(subject)
    #   expect(result).to eq(1)
    # end
    it 'calculates the volume of a sphere'
    #   result = area.volume_sphere(subject)
    #   expect(result).to eq()
    # end

    it 'calculates the volume of a cylinder'
    #   result = area.volume_cylinder(subject)
    #   expect(result).to eq()
    # end
  end


  describe "metric_imperial_conversion"
    it 'converts feet to metres'
    #   result = area.feet_metres(subject)
    #   expect(result).to eq(1)
    # end

    it 'converts metres to feet'
    #  result = area.feet_metres(subject)
    #  expect(result).to eq()
    # end

    it 'converts miles to kms'
    #   result = area.miles_km(subject)
    #   expect(result).to eq(1)
    # end

    it 'converts km to miles' do
      result = area.km_miles(subject)
      #temp test need to flesh out method call
      expect(result).to eq()
    end

    it 'converts inches to cm'
    #   result = area.inches_cm(subject)
    #   expect(result).to eq(1)
    # end

    it 'converts cm to inches'
    #   result = area.inches_cm(subject)
    #   expect(result).to eq(1)
    # end

    it 'converts cups to litres'
    #   result = area.cups_litres(subject)
    #   expect(result).to eq(1)
    # end

    it 'converts litres to cups'
    #   result = area.cups_litres(subject)
    #   expect(result).to eq(1)
    # end
  end
end
