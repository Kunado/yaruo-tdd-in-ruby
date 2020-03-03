require_relative 'csv_parser'

describe CSVParser do
  context "when given text has neither '\"' nor ',' as a part of one of its values" do
    parsed = CSVParser.parse("a,b,c")
    it { expect(parsed).to eq ['a', 'b', 'c'] }
  end
end
