class Command
  def perform(buffer, command)
  end

  def write_content_command
    WriteContent.new
  end
end
