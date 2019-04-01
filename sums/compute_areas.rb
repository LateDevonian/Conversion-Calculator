require 'byebug'

class ComputeAreas

  # let(:subject) {length: 24, width: 2, height: 5,
  #   radius: 3.3, axis_a: 2, axis_b: 6
  #    metric?: true }
  def initialize
    @error1 = "Cannot compute, please supply correct measurements!"
    @error2 = "ooops something went wrong"
    @pi = Math::PI
  end
  #

  def rectangle(length:, width:)
    # #byebug
    # measure.key?(:length, :width)
    # false
    #   @error1
    # true


      # h = measure[:length].to_f
      # w = measure[:width].to_f
      (length.to_f * width.to_f).round(2)
    end


  def triangle(measure)
    h = measure[:height_depth].to_f
    b = measure[:length].to_f

    (h * (b/2)).round(2)
  end

  def circle_area(measure)
    r = measure[:radius].to_f
    (@pi*(r*r)).round(2)
  end

  def ellipse_area(measure)
    #area of ellipse
    a1 = measure[:axis_a].to_f
    a2 = measure[:axis_b].to_f
    (@pi*(a1*a2)).round(2)
  end

  def volume_cube(measure)
    a = rectangle(measure)
    ((a*a)*a).round(2)
  end

  def surface_sphere(measure)
    #area = 4 pi r-square
  end

  def volume_sphere(measure)
   #volume = 4/3 times pi r-cubed
  end

  def volume_cylinder(measure)
    # volume = pi r-square height
  end

  #conversions!
  #if metric? == true then convert to imperial

  def feet_metres(measure)

    # divide by 3.281 to get metres
    # multiply by 3.281 to get feet
  end

  def km_miles(measure)
    km_miles(subject)
    d = me
    #if measure[:metric]? true
    #multiply by 1.609 to get km

    #divide by 1.609 to get miles
  end

  def inches_cm(measure)
    #multiply by 2.54 to get cm
    #divide by 2.54 to get inches
  end

  def cups_litres(measure)
    #divide volume by 4.227 for litres
    #multiply volume 4.227 for cups
  end

end
