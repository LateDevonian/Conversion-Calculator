require 'rspec'
require_relative '../sums/compute_areas'

RSpec.describe ComputeAreas do

  let(:rectangle_m) { {length: 4, width: 2 } }
  let(:square_m) { {length: 4, width: 4} }
  let(:triangle_m) { {length: 4, height_depth: 5} }
  let(:circle_m) { { radius: 3} }
  let(:ellipse_m) { {axis_a: 2, axis_b: 6 } }

  let(:area) { ComputeAreas.new }

  describe '2D area of shapes ' do


    it 'calculates the area of a square' do
      result = area.rectangle(square_m)
      expect(result).to eq(16)
    end

    it 'calculates the area of a rectangle' do
      result = area.rectangle(rectangle_m)
      expect(result).to eq(8)
    end

    it 'calcuates the area of a triangle' do
      result = area.triangle(triangle_m)
      expect(result).to eq(10)
    end

    it 'calculates the area of a circle' do
      result = area.circle_area(circle_m)
      expect(result).to eq(28.27)
    end

    it 'calculates the area of an ellipse' do
       result = area.ellipse_area(ellipse_m)
       expect(result).to eq(37.7)
     end

     it 'caluculates the surface area of a sphere' do
       result = area.surface_sphere(circle_m)
       expect(result).to eq(113.1)
     end
  end

  describe 'handles differently formatted input' do

    it 'returns rectangle error if input is invalid' do
      subject = { length: "01.002", width: "11111111.33333" }
      result = area.rectangle(subject)
      expect(result).to eq(11133333.56)
    end

    it 'returns rectangle error if input is invalid' do
      subject = { length: "long", width: "short" }
      result = area.rectangle(subject)
      expect(result).to eq(0)
    end

    it 'returns result with decimal places' do
      subject = { length: 1.2, width: 201.1 }
      result = area.rectangle(subject)
      expect(result).to eq(241.32)
    end
  end


  describe 'it will error when not all measurements are provided' do

    it 'returns rectangle error if there is no length' do
      subject = { width: 4 }
      #wrap it in a block to catch the error
      expect{ area.rectangle(subject) }.to raise_error(ArgumentError)
    end

    it 'returns rectangle error if there is no width' do
      subject = { length: 4 }
      expect{ area.rectangle(subject) }.to raise_error(ArgumentError)
    end

    it 'returns rectangle error if input is null' do
      subject = { }
      expect{ area.rectangle(subject) }.to raise_error(ArgumentError)
    end

    it 'returns triangle error if there is no height' do
      subject = { length: 4 }
      expect{ area.triangle(subject) }.to raise_error(ArgumentError)
    end

    it 'returns triangle error if there is no height_depth' do
      subject = { height_depth: 4 }
      expect{ area.triangle(subject) }.to raise_error(ArgumentError)
    end

    it 'returns ellipse error if there is axis_a' do
      subject = { axis_b: 4 }
      expect{ area.ellipse_area(subject) }.to raise_error(ArgumentError)
    end

    it 'returns ellipse error if there is axis_b' do
      subject = { axis_a: 4 }
      expect{ area.ellipse_area(subject) }.to raise_error(ArgumentError)
    end

    it 'returns circle error if there is no radius' do
      subject = { length: 4 }
      expect{ area.circle_area(subject) }.to raise_error(ArgumentError)
    end

    it 'returns surface_sphere error if there is no radius' do
      subject = { }
      expect{ area.surface_sphere(subject) }.to raise_error(ArgumentError)
    end
  end

  describe 'it errors when the wrong data is provided' do
    it 'returns ellipse error if there is axis_a' do
      subject = { axis_a: 4, width: 5}
      expect{ area.ellipse_area(subject) }.to raise_error(ArgumentError)
    end
  end


end
