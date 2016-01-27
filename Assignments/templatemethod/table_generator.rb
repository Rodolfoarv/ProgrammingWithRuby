
# Template Method Pattern
# Date: 27-Jan-2016
# Authors:
#           Rodolfo Andrés Ramírez Valenzuela



class TableGenerator < Minitest::Test

  def initialize(header, data)
    @header = header
    @data = data
  end

  def generate
    generate_header_row + (@data.map {|x| generate_row(x)}).join
  end

  def generate_header_row
    (@header.map {|x| generate_header_item(x)}).join
  end

  def generate_item(item)
    item
  end

  def generate_row(row)
    (row.map {|x| generate_item(x)}).join
  end

  def generate_header_item(item)
    item
  end

end

class CSVTableGenerator < TableGenerator

  def generate_row(row)
    "#{(row.map {|x| generate_item(x)}).join(',')}\n"
  end

  def generate_header_row
    generate_row(@header)
  end

end

class HTMLTableGenerator < TableGenerator
  def generate
    generate_header_row + (@data.map {|x| generate_row(x)}).join + generate_last
  end

  def generate_row(row)
    "<tr>#{(row.map {|x| generate_item(x)}).join('')}</tr>\n"
  end

  def generate_header_row
    "<table>\n#{generate_header_table_row(@header)}"
  end

  def generate_header_table_row(row)
    "<tr>#{(row.map {|x| generate_header_item(x)}).join('')}</tr>\n"
  end

  def generate_header_item(item)
    "<th>#{item}</th>"
  end

  def generate_item(item)
    "<td>#{item}</td>"
  end

  def generate_last()
    "</table>\n"
  end

end

class AsciiDocTableGenerator < TableGenerator
  def generate
    generate_header_row + (@data.map {|x| generate_row(x)}).join + generate_last
  end

  def generate_row(row)
    "#{(row.map {|x| generate_item(x)}).join('')}\n"
  end

  def generate_header_row
    "[options=\"header\"]\n|==========\n#{generate_row(@header)}"
  end

  def generate_item(item)
    "|#{item}"
  end

  def generate_last()
    "|==========\n"
  end
end
