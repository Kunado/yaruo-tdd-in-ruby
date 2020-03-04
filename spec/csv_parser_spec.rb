require_relative '../lib/csv_parser'

describe CSVParser do
  context "when given text has neither '\"' nor ',' as a part of one of its values" do
    context "when given text is 'a,b,c'" do
      parsed= CSVParser.parse('a,b,c')
      it { expect(parsed).to eq ['a', 'b', 'c'] }
    end
  end

  context "when given text has ',' as a part of one of its values" do
    context "when given text is '\"a,d\",b,c'" do
      parsed= CSVParser.parse('"a,d",b,c')
      it { expect(parsed).to eq ['a,d', 'b', 'c'] }
    end
  end

  context "when given text has '\"' and ',' as a part of one of its values" do
    context "when given text is '\"a,d\"\"\",b,c'" do
      parsed= CSVParser.parse('"a,d""",b,c')
      it { expect(parsed).to eq ['a,d"', 'b', 'c'] }
    end
  end

  context "when given text has '\"' after ' ' as a part of one of its values" do
    context "when given text is ' \"a\" ,b,c'" do
      parsed= CSVParser.parse(' "a" ,b,c')
      it { expect(parsed).to eq ['a', 'b', 'c'] }
      end
  end

  context "when given text has '\"' after ' ' and has ',' as a part of one of its values" do
    context "when given text is 'b,c, \"a\" ,\"b\",\"c \"'" do
      parsed= CSVParser.parse('b,c, "a" ,"b","c "')
      it { expect(parsed).to eq ['b', 'c', 'a', 'b', 'c '] }
    end
  end
end
