class WriteContent
  def initialize
    @content = ""
  end

  def execute
    while (write_line = gets.chomp) != "." do
      @content << write_line
      @content << "\n"
    end

    $stdout << "--\n"
    @content
  end
end
