class Report
  def initialize
    @title = 'Monthly report'
    @text = ['Things are going', 'really,really well.']
  end

  def output_report
    if format == :plain
      puts("*** #{@title} ***")
    elsif format == :html
      puts('<html>')
      puts('  <head>')
      puts("    <title>#{@title}</title>")
      puts('   </head>')
      puts('    <body>')
    else
      raise "Uknown format: #{format}"
    end

    @text.each do |line|
      if format == :plain
        puts(line)
      else
        puts("  <p>#{line}</p>")
      end
    end

    if format == :html
      puts('  </body>')
      puts('</html>')
    end
  end
end

report = Report.new
report.output_report