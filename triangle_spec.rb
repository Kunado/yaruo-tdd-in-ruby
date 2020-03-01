require_relative 'triangle'

describe Triangle do
  context 'with three equally long sides' do
    triangle = Triangle.new
    triangle.a = 1
    triangle.b = 1
    triangle.c = 1
    it { expect(triangle).to be_equilateral_triangle }
  end

  context 'with unequally long three sides' do
    triangle = Triangle.new
    triangle.a = 3
    triangle.b = 4
    triangle.c = 5
    it { expect(triangle).to_not be_equilateral_triangle }
  end

  context 'has nil for one of side lengths' do
    triangle = Triangle.new
    triangle.a = 3
    triangle.b = 4
    triangle.c = nil
    it { expect(triangle).to_not be_equilateral_triangle }
  end
end
