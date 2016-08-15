require_relative "command"
require_relative "command/write_content"

def listen
  gets.chomp
end

def buffer
  @buffer ||=  ""
end

def perform(command)
  command_handler.perform(buffer, command)
end

def command_handler
  @_command_handler ||= Command.new
end

def start
  loop do
    begin
      perform listen
    rescue SignalException => e
      $stdout << "shutdown!!"
      exit!
    end
  end
end

start
