require 'byebug'

class Conversion

  def initialize
     @math = Math::PI
  end

  def far_to_cel(far:)
    #convert fahrenheit to celcius
    if far == 0
        -17.78
      else
      ((far.to_f - 32) * 0.5555 ).round(2)
    end
  end

  def cel_to_far(cel:)
    if cel == 0
      32
      else
      ((cel.to_f * 1.8) + 32).round(2)
    end
  end

   def to_metres(m:)
     (m.to_f/ 3.281).round(2)
   end

   def to_feet(m:)
     (m.to_f * 3.281).round(2)
   end

   def to_miles(m:)
     (m.to_f / 1.609).round(2)
   end

   def to_km(m:)
     (m.to_f * 1.609).round(2)
   end

   def to_cm(m:)
     (m.to_f * 2.54).round(2)
   end

   def to_inches(m:)
     (m.to_f / 2.54).round(2)
   end

   def cups_to_litres(m:)
     (m.to_f / 4.227).round(2)
   end

   def litres_to_cups(m:)
     (m.to_f * 4.227).round(2)
   end
end
