class Triangle
  attr_accessor :a, :b, :c

  def equilateral_triangle?
    triangle? && side_pairs.all?{ |pair| pair.inject(&:==) }
  end

  def isosceles_triangle?
    triangle? && side_pairs.any?{ |pair| pair.inject(&:==) }
  end

  def scalene_triangle?
    triangle? && side_pairs.all?{ |pair| pair.inject(&:!=) }
  end

  def sides=(array)
    (@a, @b, @c) = array
  end

  def sides
    [@a, @b, @c]
  end

  def side_pairs
    sides.combination(2)
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
      positive_values? && sides.all?{ |side| other_sides_than(side).inject(&:+) > side }
    end
end
