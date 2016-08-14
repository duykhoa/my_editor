class Command
  def perform(buffer, command)
    case command
    when "i"
      buffer << write_content_command.execute
    when "p"
      $stdout << buffer
    when "q"
      exit!
    when /s\/(.*)\/(.*)\/$/
      buffer.gsub!($1, $2)
    end
  end

  def write_content_command
    WriteContent.new
  end
end
