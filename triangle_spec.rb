require_relative 'triangle'

describe Triangle do
  context 'with three equally long sides' do
    triangle = Triangle.new
    array = [1, 1, 1]
    triangle.sides = array
    it { expect(triangle).to be_equilateral_triangle }
    it { expect(triangle).to be_isosceles_triangle }
    it { expect(triangle).to_not be_scalene_triangle }
  end

  context 'with two equally long sides' do
    triangle = Triangle.new
    array = [2, 2, 1]
    triangle.sides = array
    it { expect(triangle).to_not be_equilateral_triangle }
    it { expect(triangle).to be_isosceles_triangle }
    it { expect(triangle).to_not be_scalene_triangle }
  end

  context 'with unequally long three sides' do
    triangle = Triangle.new
    array = [3, 4, 5]
    triangle.sides = array
    it { expect(triangle).to_not be_equilateral_triangle }
    it { expect(triangle).to_not be_isosceles_triangle }
    it { expect(triangle).to be_scalene_triangle }
  end

  context 'with two equally long sides that cannot be triangle' do
    triangle = Triangle.new
    array = [2, 1, 1]
    triangle.sides = array
    it { expect(triangle).to_not be_isosceles_triangle }
  end

  context 'has nil for one of side lengths' do
    triangle = Triangle.new
    array = [3, 4, nil]
    triangle.sides = array
  end
end
