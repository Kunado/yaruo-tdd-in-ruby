class Triangle
  attr_accessor :a, :b, :c

  def equilateral_triangle?
    return false unless [@a, @b, @c].all?{ |side| side.is_a?(Numeric) && side > 0 }
    @a == @b && @a == @c && @b == @c
  end
end
