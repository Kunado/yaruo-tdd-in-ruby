class Triangle
  attr_accessor :a, :b, :c

  def equilateral_triangle?
    return false unless positive_values?
    @a == @b && @a == @c && @b == @c
  end

  def isosceles_triangle?
    return false unless positive_values?
    @a == @b || @a == @c || @b == @c
  end

  private
    def positive_values?
      [@a, @b, @c].all?{ |side| side.is_a?(Numeric) && side > 0 }
    end
end
