
require 'byebug'
require_relative 'compute_areas'

class ComputeVolumes


  def initialize
    @pi = Math::PI
    @area = ComputeAreas.new
  end

  def volume_cube(measure)
    cube = @area.rectangle(measure)
    length = measure[:length]
    ((cube) * length).round(2)
  end

  def volume_box(length:, width:, height:)
    (length * width * height).round(2)
  end


  def volume_sphere(radius:)
    r = radius.to_f
    (1.3333333 * @pi * ((r*r)*r)).round(2)
  end

  def volume_cylinder(radius:, height:)
   (@pi * (radius*radius) * height).round(2)
  end

end
