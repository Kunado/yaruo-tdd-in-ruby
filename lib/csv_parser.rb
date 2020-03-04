class CSVParser
  def self.parse(text, array = [])
    return if text.length == 0
    c = text.slice!(0)
    if c == '"'
      parse_double_quote text, array
    else
      array.push c unless c == ',' || c == ' '
      parse text, array
    end
    array
  end

  def self.parse_double_quote(text, array = [], string = '')
    c = text.slice!(0)
    if c == '"'
      parse_double_quote_in_double_quote text, array, string
    else
      string += c
      parse_double_quote text, array, string
    end
  end

  def self.parse_double_quote_in_double_quote(text, array = [], string = '')
    c = text.slice!(0)
    if c == '"'
      string += c
      parse_double_quote text, array, string
    else
      array.push string
      parse text, array
    end
  end
end
