require 'byebug'

class ComputeAreas

  def initialize
    @pi = Math::PI
  end

  #calculates areas of flat shapes

  def rectangle(length:, width:)
    # now does squares!!!!
      (length.to_f * width.to_f).round(2)
    end

  def triangle(length:, height_depth:)
    (height_depth.to_f * (length/2)).round(2)
  end

  def circle_area(radius:)
    r = radius.to_f
    (@pi*(r*r)).round(2)
  end

  def ellipse_area(axis_a: ,axis_b:)
    a1 = axis_a.to_f
    a2 = axis_b.to_f
    (@pi*(a1*a2)).round(2)
  end

  def surface_sphere(radius:)
    r = radius
    (4 * @pi * (r*r)).round(2)
  end
end
