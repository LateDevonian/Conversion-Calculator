require 'rspec'
require_relative '../sums/conversions'

RSpec.describe Conversion do

  let(:subject) { { m: 8 } }

  let(:convert) { Conversion.new }

  describe "metric_imperial_conversion" do
    it 'converts feet to metres' do
      result = convert.to_metres(subject)
      expect(result).to eq(2.44)
    end

    it 'converts metres to feet' do
     result = convert.to_feet(subject)
     expect(result).to eq(26.25)
    end

    it 'converts miles to kms' do
      result = convert.to_km(subject)
      expect(result).to eq(12.87)
    end

    it 'converts km to miles' do
      result = convert.to_miles(subject)
      expect(result).to eq(4.97)
    end

    it 'converts inches to cm' do
      result = convert.to_cm(subject)
      expect(result).to eq(20.32)
    end

    it 'converts cm to inches' do
      result = convert.to_inches(subject)
      expect(result).to eq(3.15)
    end

    it 'converts cups to litres' do
      result = convert.cups_to_litres(subject)
      expect(result).to eq(1.89)
    end


    it 'converts litres to cups' do
      result = convert.litres_to_cups(subject)
      expect(result).to eq(33.82)
    end
  end

  describe 'far_to_cel' do
    it 'converts fahrenheit to celcuis' do
      subject = { far: 4 }
      result = convert.far_to_cel(subject)
      expect(result).to eq(-15.55)
    end

    it 'converts a zero to celcuis' do
      subject = { far: 0 }
      result = convert.far_to_cel(subject)
      expect(result).to eq(-17.78)
    end
  end

  describe 'cel_to_far' do
    it 'converts celcuis to fahrenheit' do
      subject = { cel: 26 }
      result = convert.cel_to_far(subject)
      expect(result).to eq(78.8)
    end

    it 'converts a zero to fahrenheit' do
      subject = { cel: 0 }
      result = convert.cel_to_far(subject)
      expect(result).to eq(32)
    end
  end
  describe 'it returns error when invalid metric' do
    it 'gives an error on cups to litres when wrong measurement' do
      subject = { random: 8 }
      expect{ convert.cups_to_litres(subject) }.to raise_error(ArgumentError)
    end
    it 'avril needs to finish off the negative test cases'
  end

end
