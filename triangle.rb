class Triangle
  attr_accessor :a, :b, :c

  def equilateral_triangle?
    return false unless triangle?
    sides.combination(2).all?{ |side_combi| side_combi[0] == side_combi[1] }
  end

  def isosceles_triangle?
    return false unless triangle?
    sides.combination(2).any?{ |side_combi| side_combi[0] == side_combi[1] }
  end

  def scalene_triangle?
    return false unless triangle?
    sides.combination(2).all?{ |side_combi| side_combi[0] != side_combi[1] }
  end

  def sides=(array)
    (@a, @b, @c) = array
  end

  def sides
    [@a, @b, @c]
  end

  def other_sides_than(side)
    sides_array = sides.clone
    sides_array.delete_at(sides.find_index{ |i| i == side })
    sides_array
  end

  private
    def positive_values?
      sides.all?{ |side| side.is_a?(Numeric) && side > 0 }
    end

    def triangle?
      return false unless positive_values?
      sides.all?{ |side| other_sides_than(side).inject(&:+) > side }
    end
end
