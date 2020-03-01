require_relative 'triangle'

describe Triangle do
  context 'with three equally long sides' do
    @triangle = Triangle.new
    @triangle.a = 1
    @triangle.b = 1
    @triangle.c = 1
    it { is_expected.to be_equilateral_triangle }
  end
end
